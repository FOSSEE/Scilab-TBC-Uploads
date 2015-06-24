

//Variable declaration
Qcoil = 75.               //coil inductance
f = 200.                  //frequency(Hz) 
BW = 4.                   //bandwidth(kHz)
C = 470*10^-9.           //capacitance(pF) 

//Calculations
//Part a
Qcircuit = f/BW                     //circuit inductance
L = 1/(((2*(%pi)*f)^2)*C)      //inductance(mH)  

//Part b
R = Qcircuit*2*(%pi)*f*L        //resistance(k ohms)

//Part c
r = (2*(%pi)*f*L)/Qcoil         //internal resistance(ohms)
req = (Qcoil^2)*r                  //equivalent resistance(k ohms)
ro = (R*req)/(req-R)                //output resistance(k ohms)

//Part d
BW = 5                               //bandwidth(kHz)
Qcircuit = f/BW                      //circuit inductance 
Req = Qcircuit*2*(%pi)*f*L       //equivalent resistance(k ohms) 
Rl = (Req*R)/(R-Req)                 //load resistance(k ohms)

//Results
printf ("a)coil inductance is %.2f mH",L)
printf ("b)circuit output impedance atresonant freq is %.2f K ohms",R/1E+3)
printf ("c)internal resistance ro is %.2f k ohms",ro/1E+3)
printf ("d)value of load resistance is %.2f k ohms",Rl/1E+3)
