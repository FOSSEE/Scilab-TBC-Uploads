clc;
warning("off");
printf("\n\n example11.6 - pg525");
// given
Tw=680;  //[K] - temperature at the wall
Tb=640;  //[K] - temperature at the bulk
Tf=(Tw+Tb)/2;  //[K]
Nre=50000;
vmb=2.88*10^-7;
vf=2.84*10^-7;
Nref=Nre*(vmb/vf);
k=27.48;
d=0.04;
// from table 11.3 the prandtl no. is
Npr=8.74*10^-3
// constant heat flow
Nnu=6.3+(0.0167)*((Nref)^0.85)*((Npr)^0.93);
h=Nnu*(k/d);
printf("\n\n constant heat flow\n h = %f W/m^2*K = %f Btu/ft^2*h*degF",h,h*0.17611);
// constant wall temperature
Nnu=4.8+0.0156*((Nref)^0.85)*((Npr)^0.93);
h=Nnu*(k/d);
printf("\n\n constant wall temperature\n h = %f W/m^2*K = %f Btu/ft^2*h*degF",h,h*0.17611);
