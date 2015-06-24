// Variable Declaration
Ad = 6.0*10**6      //Reservoir capacity(m^3)
h = 150.0           //Head(m)
n = 0.78            //Overall efficiency
P = 25.0*10**6      //Power(Watt)
t = 4.0             //Supply time(hour)

// Calculation Section
AX = P*75*3600*t/(736*h*n*1000)   //unit(m^3)
X_d = AX/Ad*100                   //Fall in reservoir level(%)

// Result Section
printf('Percentage fall in reservoir level = %.2f percent' ,X_d)
