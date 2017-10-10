//Chapter 6, Example 6.7
clc
//Initialisation
pi=3.14                       //pi
f=50                          //frequency in hertz
L=400*10**-3                  //inductance in hemry
C=50*10**-6                   //capacitance in farad
R=200                         //resistance in ohm

//Calculation
w=2*pi*f                       //angular frequency
Xl=w*L                         //inductive reactance
Xc=1/(w*C)                     //Capacitive Reactance
X=Xl-Xc                         //Complex part

//Results
printf("Complex Impedance = %d + j %d Ohm",R, round(X))

