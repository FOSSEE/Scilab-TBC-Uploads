clc;
warning("off");
printf("\n\n example13.10 - pg701");
// given
d=0.01;  //[m] - diameter of cyclindrical porous plug
D=2*10^-9;  //[m^2/sec] - diffusion coefficient
t=60*60;  //[sec]
r=d/2;
m=0;
Ca_inf=0;
Ca_0=10;
X=(D*t)/((r)^2);
// from fig 13.14 the ordinate is
Y=0.7;
Ca_c=Ca_inf-Y*(Ca_inf-Ca_0);
printf("\n\n the concentration of KCL at the centre after 60 min is \n Ca = %f kg/m^3",Ca_c);

