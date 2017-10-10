clc
//
//
//

//Variable declaration
m=8          //mass
g=9.8        //acceleration due to gravity
x=0.32       //Stretched spring deviation
m2=0.5       //mass of the other body


//Calculations
k=((m*g)/x)
T=((2*3.14)*sqrt(m2/k))

//Result
printf("\n The Time Period of Oscillation for the other body is %0.2f sec",T)
