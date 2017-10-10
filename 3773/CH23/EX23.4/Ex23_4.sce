//Chapter 23: Ground Wave Propagation
//Example 23-2.3
clc;

//Variable Initialization
f1 = 0.3      //Frequency (MHz)
f2 = 1      //Frequency (MHz)
f3 = 3      //Frequency (MHz)
sigma = 4e-5    //Standard deviation of surface irregularities (unitless)

//Calculations
x1 = (18e3)*sigma/f1    //Parameter x for f1 (unitless)
x2 = (18e3)*sigma/f2    //Parameter x for f2 (unitless)
x3 = (18e3)*sigma/f3    //Parameter x for f3 (unitless)

//Result
mprintf( "The parameter x for 0.3MHz is %.1f", x1)
mprintf( "\nThe parameter x for 1MHz is %.2f", x2)
mprintf( "\nThe parameter x for 3MHz is %.2f", x3)
