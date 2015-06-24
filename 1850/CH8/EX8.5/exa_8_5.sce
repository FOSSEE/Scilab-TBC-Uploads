// Exa 8.5
clc;
clear;
close;
//given data
t=0;
Vc=0;
Vo=5;//in volt
// V1= 2*R/(2*R+3*R)= 2/5*Vo
// Vco= 1/5*VR +4/5*Vo = 1/5*(VR+4*Vo)
// Req= R||4*R= 4/5*R
// Vct= Vco*(1-%e^(-t/(Req*C)))= 1/5*(VR+4*Vo)*(1-%e^(-t/(4*R*C/5)))= 1/5*(VR+4*Vo)*(1-%e^(-1.25*t/(R*C)))
// T= 2*Rf*C*log(1+2*R3/R2)= 2*R*C*log(7/3)= 1.7*R*C
// t= T/2= .85*R*C, Hence
Vct=2;//in volt
// Vct= 1/5*(VR+4*Vo)*(1-%e^1.0625)
VR= Vct*5/(1-%e^-1.0625)-4*Vo;
disp(VR,"Value of VR in volt")
