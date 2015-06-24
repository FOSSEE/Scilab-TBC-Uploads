//Variable declaration
V=9                   //voltmeter of voltage(V)
i=9                   //ammeter current of 9V
r1=1                  //resistance(ohms)
r2=3                  //resistance(ohms)
r=5                   //resistance parallel to ammeter(ohms)

//Calculations
Isc=((i*r)-V)/(r1+r)       //short circuiting a and b and converting current source to a voltage source(A)
Ro=((r+r1)*r2)/((r+r1)+r2) //output resistance(ohms)

//Results
printf ("Isc is %.f A",Isc)
printf ("Ro is %.f ohms",Ro)
