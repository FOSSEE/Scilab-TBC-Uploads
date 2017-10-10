clear
clc
//Example 3.5 PRESSURE IN THE LOWER STRATOSPHERE
T=-71.5+460; //temperature[°R]
z0=45000; //[ft]
z=55000; //[ft]
p0=2.31; //pressure at z0[psia]
g=32.2; //[ft/s^2]
R=1716; //[ft^2/R.s^2]
p=p0*exp(-(z-z0)*(g/(R*T))) //pressure at z[psia]
p1=p*(101.3/14.7); //in SI units[kPa]
printf("\nThe pressure at an elevation of 55,000 ft, p = %.2f psia (= %.2f kPa absolute).\n",p,p1)
