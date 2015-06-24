clc;
warning("off");
printf("\n\n example3.1 - pg65");
// given
a=0.0006;  //[m^2] - area
l=0.1;  //[m] - length
// (a) using the fourier law
deltax=0.1;  //[m] - thickness of copper block
T2=100;  //[degC] - temp on one side of copper block
T1=0;  //[degC] - temp on other side of the copper block
k=380;  //[W/mK] - thermal conductivity
// using the formula (q/A)*deltax=-k*(T2-T1)
g=-k*(T2-T1)/deltax;
printf("\n\n (a) The steady state heat flux across the copper block is\n q/A=%5eJ*m^-2*sec^-1 ",g);
// (b)
V=a*l; //[m^3] - volume
// using the overall balance equation with the accumulation and generation term
Qgen=1.5*10^6;  //[j*m^-3*sec^-1]
SIx=(g*a-Qgen*V)/a;
printf("\n\n (b) the flux at face 1 is %5ej*m^-2*sec^-1;\nthe negative sign indicates taht the heat flux is from right to left(negative x direction",SIx);

