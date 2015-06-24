//chapter 5
//example 5.25
//Calculate minimum uncertainty in the velocity of electron 
//page 113
clear;
clc;
//given
dx=1E-8; // in m (length of box or uncertainty in the position)
h=6.626E-34; // in J-s (Planck'c constant)
m=9.1E-31; // in Kg (mass of electron)
//calculate
// From uncertainty principle dx*dp=h and dp=m*dv
// therefore we have
dv=h/(m*dx); // calculation of minimum uncertainty in the velocity
printf('\nThe minimum uncertainty in the velocity of electron is \t dv=%1.2E m/s',dv);
dv=dv*1E-3; // changing unit from m/s to Km/s
printf('\n\t\t\t\t\t\t\t   =%.1f Km/s',dv);
// Note: There is slight variation in the answer due to round off
