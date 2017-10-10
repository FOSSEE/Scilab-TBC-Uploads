//Chapter 23: Ground Wave Propagation
//Example 23-1.1
clc;

//Variable Initialization
f1 = 0.1      //Frequency (MHz)
f2 = 1.0        //Frequency (MHz)
f3 = 10.0       //Frequency (MHz)

//Calculation
d1 = 50/(f1**(1.0/3)) //Distance for f1 (miles)
d2 = 50/(f2**(1.0/3)) //Distance for f2 (miles)
d3 = 50/(f3**(1.0/3)) //Distance for f3 (miles)

//Result
mprintf( "The distance for 100kHz is %.2f miles",d1)
mprintf( "\nThe distance for 1MHz is %d miles", d2)
mprintf( "\nThe distance for 10MHz is %.2f miles", d3)

