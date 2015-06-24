//example-7.1
//page no-203
//given
//outward flux of copper is
Jx=10^21  //per m^2 per sec
//concentration of copper at room temp on one side of aluminium which is 3 mm thickness
C1=2*10^13  // per m^3
dx=3*10^-3  //m
//concentration on the other side of aluminium
C2=4*10^6  // per m^3
//concentration gradient
M=(C1-C2)/dx  //m^4
//according to fick's law
//Jx=-Dx*dM/dx
//so Dx will be
Dx=-Jx*1/M  //m^2/s
printf ("the concentration gradient is %f per m^4and diffusivity of copper is %f m^2/s",M,Dx)
