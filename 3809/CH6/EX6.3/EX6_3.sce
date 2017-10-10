//Chapter 6, Example 6.3
clc
//Initialisation
pi=3.14                       //pi
f=100                          //frequency in hertz
L=25*10**-3                    //inductance in henry
vl=5                           //peak voltage

//Calculation
w=2*pi*f                       //angular frequency
Xl=w*L                         //inductive reactance
il=vl/Xl                       //peak current

//Results
printf("Peak Current, IL = %d mA",il*1000)
