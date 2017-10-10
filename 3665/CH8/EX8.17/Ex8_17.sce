clc//
//
//

//Variable declaration
RH=6.85*10^-5;   //hall coefficient(m^3/coulomb)
e=1.6*10^-19; 
sigma=250;      //conductivity(m-1 ohm-1)

//Calculation
n=1/(RH*e);       //density of charge carriers(m^3)
mew=sigma/(n*e);    //mobility of charge carriers(m^2/Vs)

//Result
printf("\n density of charge carriers is %0.3f *10^22 m^3",n/10^22)
printf("\n mobility of charge carriers is %0.3f *10^-3 m^2 V-1 s-1",mew*10^3)
