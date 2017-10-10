//Example 10.3, Page Number 502
//The Function fpround(dependency) is used to round a floating point number x to n decimal places
//Raman Scattering Sensor Temperature Sensitivity
clc;
v=1.5*(10**13) //Raman shift of silcia in terms of Hertz
T=(273+50) //Temperature in terms of Kelvin
d=1 //Fractional change in r in terms of per degree
k=1.38*(10**-23) //Boltzman Constant in meter square kilogram per second square Kelvin 
h=6.6*(10**-34) //Plancks Constant in meter square kilogram per second

dr=(h*v)/(k*(T**2))  //dr is the fractional change of temperature sensitivity of Raman sensor
dr=dr*100
dr=fpround(dr,1)
mprintf("The Fractional Change of Temperature Sensitivity of Raman Scattering Sensor is %0.1f percent per degree celsius",dr)
