clear
clc
//Example 4.3 PRESSURE IN A DECELERATING TANK OF LIQUID
p1=0;
Gamma=42; //[lbf/ft^3]
g=32.2; //[ft/s^2]
al=-10; //[ft/s^2]
l=20; //[ft]
//Euler's equation along the top of tank, dp/dl=-Gamma*l/g
p2=p1-Gamma*al*l/g //[psfg]
//1kPa=20.88psfg
printf("\n(a)The pressure at the top front, p = %.f psfg (= %.1f kPa,gage).\n",p2,p2/20.88)
//Eulers equation in vertical direction,
//d(p+Gamma*z)/dz=-rho*az, az=0
delz=6; //delz=z2-z3,[ft]
p3=p2+Gamma*delz //[psfg]
printf("\n(b)The maximum pressure in the tank, pmax = %.f psfg (= %.1f kPa,gage).\n",p3,p3/20.88)