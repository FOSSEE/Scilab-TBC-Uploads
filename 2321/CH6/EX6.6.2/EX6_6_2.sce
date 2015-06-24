//Example 6.6.2
clc;
clear;
close;
n=4;//(No. of elements)
//d=lambda/2;(Spacing)
dBYlambda=1/2;//(Spacing/wavelength)
alfa=0;//degree(angle)
N=1;//(For first null)
disp("Part (i)");
theta01=[acosd(+N/2) acosd(-N/2)];//degree(Angle)
N=2;//(For second null)
theta02=[acosd(+N/2) acosd(-N/2)];//degree(angle)
//N=3;//not possible as N/2 is greater than 1
disp(theta01,"Null directions for N=1 : theta01(degree) ");
disp(theta02,"Null directions for N=2 : theta02(degree) ");
disp("Part (ii)");
m=0;//for maxima
theta_m=acosd(m/dBYlambda);//degree(angle)
disp(theta_m,"Direction of maxima : theta_m(degree) ");
disp("Part (iii)");
S=1;//for side lobe maxima
//S=2 & onwards not possible
theta_S=[acosd((2*S+1)/2/n/dBYlambda) acosd(-(2*S+1)/2/n/dBYlambda)];//degree(angle for side lobe)
disp(theta_S,"Side lobe maxima : theta_S(degree) ");
disp("Part (iv)");
HPBW=2*[90-acosd(1.391/%pi/n/dBYlambda)];//degree(HPBW)
disp(HPBW,"HPBW(degree) ");
disp("Part (v)");
FNBW=2*[90-acosd(1/n/dBYlambda)];//degree(FNBW)
disp(FNBW,"FNBW(degree) ");
disp("Part (vi)");
SLL=-13.46;//dB////for isotropic sources array(Side lobe level)
disp(SLL,"Side lobe level(dB) ");
