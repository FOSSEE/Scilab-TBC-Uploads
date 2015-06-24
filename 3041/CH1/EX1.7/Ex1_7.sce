//Variable declaration
V=3.            //Voltage(V)
Req=300.        //total resistance as per circuit(ohm)
Rfa=20           //forward resistance(ohm)    
Vt=0.7          //Thevinine's voltage(V)
Rfb=0            //forward resistance(ohm)

//Calculations
//Part a
I=V/Req          //current(A)

//Part b
Id=(V-Vt)/Req   //diode current(mA)

//Part c
Rf=20               //forward resistance(ohms) 
Id1=(V-Vt)/(Req+Rfa) //diode current(mA)

//Results
printf ("current in this case is %.2f A",I)
printf ("diode current is %.2f mA",(Id/1E-3))
printf ("diode current is %.2f mA" ,(Id1/1E-3))
