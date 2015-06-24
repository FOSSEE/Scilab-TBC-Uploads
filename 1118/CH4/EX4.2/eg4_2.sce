clear;
//clc();
v=275;..//working voltage in volts
vrms=v/sqrt(3);..//effective value of phase voltage
pv=vrms*sqrt(2);..//peak value of phase voltage
gmax=15;..//maximum permissible stress in dielectric

r=pv/gmax;

d=2*r;..//economical core diameter in mm
printf("\n the economical core diameter is:  %.2fmm\n",d);

R=exp(1)*r;

D=2*R;..//inner diameter of the sheath
printf("\n the inner diameter of the sheath is:  %.2fmm\n",D);
