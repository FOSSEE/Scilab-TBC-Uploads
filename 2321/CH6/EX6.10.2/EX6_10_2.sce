//Example No. 6.10.2
clc;
clear;
close;
format('v',6);
D=20;//dB(Directivity)
//d=lambda/4;(spacing)
dBYlambda=1/4;//(spacing/wavelength)
D=10^(D/10);//unitless(Directivity)
n=D/4/dBYlambda;//no. of elements
disp(n,"(i) No. of elements : ");
LBYlambda=(n-1)*dBYlambda;//(length/wavelength)
disp("(ii) Length of the array is "+string(LBYlambda)+"*lambda");
HPBW=2*acosd(1-1.391/%pi/n/dBYlambda);//degree(HPBW)
disp(HPBW,"(iii) HPBW in degree : ");
SLL=-13.46;//dB(Side lobe level)
disp(SLL,"(iv) SLL in dB : ");
Beta_into_lambda=2*%pi;//(temorary calculatuion)
//alfa=-Beta*d;//for theta=0
//alfa=Beta*d;//for theta=180
alfa1=-Beta_into_lambda*dBYlambda;//radian////for theta=0
alfa1=alfa1*180/%pi;//degree(angle)
alfa2=Beta_into_lambda*dBYlambda;//radian////for theta=180
alfa2=alfa2*180/%pi;//degree(angle)
disp(alfa2,alfa1,"(v) Progressive phase shift, α for theta equals to 0° & 180° are : ");
