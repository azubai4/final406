import mysql.connector
from flask import Flask, render_template, request, redirect, url_for, flash
from flask_bootstrap import Bootstrap

app = Flask(__name__, template_folder='templates')
Bootstrap(app)
app.secret_key = "secret key"

conn = mysql.connector.connect(
    host='localhost',
    user='flask',
    password='ghanoondorf',
    database='store'
)
c = conn.cursor()
c.execute('''CREATE TABLE IF NOT EXISTS customers (
        CustomerID INT AUTO_INCREMENT PRIMARY KEY,
        FirstName VARCHAR(200),
        LastName VARCHAR(200),
        LastPurchase VARCHAR(200),
        FirstPurchase VARCHAR(200),
        PhoneNumber VARCHAR(200))''')
print("Table created")
conn.close()

@app.route('/')
def home():
    return render_template('home.html')

@app.route('/registration', methods=['GET', 'POST'])
def registration():
    if request.method == 'POST':
        firstname = request.form['FirstName']
        lastname = request.form['LastName']
        lastpurchase = request.form['LastPurchase']
        firstpurchase = request.form['FirstPurchase']
        phonenumber = request.form['PhoneNumber']

        conn = mysql.connector.connect(
		host='localhost',
		user='flask',
		password='ghanoondorf',
		database='store'
	)
        c = conn.cursor()
        c.execute("INSERT INTO customers (FirstName, LastName, LastPurchase, FirstPurchase, PhoneNumber) VALUES ('{0}', '{1}', '{2}', '{3}', '{4}')".format(firstname, lastname, lastpurchase, firstpurchase, phonenumber))
        conn.commit()
        conn.close()

        return redirect(url_for('information'))
    
    return render_template('registration.html')

@app.route('/information')
def information():
    conn = mysql.connector.connect(
    	host='localhost',
    	user='flask',
    	password='ghanoondorf',
    	database='store'
    )
    cur = conn.cursor()
    cur.execute("SELECT * FROM customers")
    rows = cur.fetchall()
    conn.close()
    return render_template('information.html', rows=rows)

if __name__ == '__main__':
    app.run(debug=True)
