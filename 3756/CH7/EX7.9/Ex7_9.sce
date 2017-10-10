clc
//
//
//

//Variable declaration
C=70*10**-12     //Cable Capacitance
L=0.39*10**-6    //Cable Inductance

//Calculations
Z0=(sqrt(L/C))

//Result
printf("\n The Characteristic Impedence is %2.2f Ohm",Z0)
