clc;
warning("off");
printf("\n\n example13.1 - pg651");
// given
h=12;  //[W/m^2*K] - heat transfer coefficeint
k=400;  //[W/m*K] - thermal conductivity
// (a) for sphere
r=5*10^-2;  //[m] - radius of copper sphere
Lc=((4*%pi*((r)^3))/3)/(4*%pi*((r)^2));
Nbi=h*Lc*(1/k);
printf("\n\n (a) The biot no. is \n Nbi = %e",Nbi);
// (b) for cyclinder
r=0.05;  //[m] - radius of cyclinder
L=0.3;  //[m] - height of cyclinder
Lc=(%pi*((r)^2)*L)/(2*%pi*r*L);
Nbi=h*Lc*(1/k);
printf("\n\n (b) The biot no. is \n Nbi = %e",Nbi);
// (c) for a long square rod
L=.4;  //[m] - length of copper rod
r=0.05;  //[m] - radius of a cyclinder havimg same cross sectional area as that of square
x=((%pi*r^2)^(1/2));
Lc=((x^2)*L)/(4*x*L);
Nbi=h*Lc*(1/k);
printf("\n\n (c) The biot no. is \n Nbi = %e",Nbi);