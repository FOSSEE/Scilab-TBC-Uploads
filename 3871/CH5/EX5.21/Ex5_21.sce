//=============================================================
//Chapter 5 example 21

clc;
clear all;

//variable declaration
I       = 10;           //current in A
//e     = (alpha*(dt))+(b(dt^2))= alpha*dt
//dt  = (K1*(I^2)*R)
//theta = K2*e
//theta     = K2*e  = K2*K1*alpha*dt   = K2*K1*alpha*(I^2)*R
//thetaF     = K3*(I^2)
//K3        = (thetaF)/(I^2);
x           = 1/(I^2);
mprintf("K3     = %3.2f *thetaf",x);
//K3        =thetaF*x
mprintf("\ntheta     = theatF/3");
//I         = sqrt((thetaF/3)*((K3)))
//I         = sqrt((thetaF/3)/K3)
I         =sqrt((1/3)*((1/x)))


//result
mprintf("\ncurrent = %3.2f A",I);
