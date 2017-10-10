//Example 5.1, Page Number 173
//The Function fpround(dependency) is used to round a floating point number x to n decimal places
clc;
T=2000 // In Kelvin
v=5*(10**14) //Frequency In Hertz
h=6.6*(10**-34) //Plancks Constant
k=1.38*(10**-23) //Boltzman Constant

R=exp((h*v)/(k*T))-1 
R=fpround(R,2)
mprintf("The Ratio of rates of spontaneous & stimulated emission is %0.2e",R);
