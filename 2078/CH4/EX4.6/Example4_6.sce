//Exa 4.6
clc;
clear;
close;
//Given data :
r=2/2;//cm
rdash=0.7788*r;//cm
d12=0.12*100;//cm
d11dash=300;//cm
d12dash=sqrt(300^2+100^2);//cm
d21dash=d12dash;//cm
d22dash=d11dash;//cm
d11=rdash;//cm
d22=rdash;//cm
d12=100;//cm
d21=100;//cm
Dm=(d11dash*d12dash*d21dash*d22dash)^(1/4);//cm
Ds=(d11*d12*d21*d22)^(1/4);//cm
L=0.4*log(Dm/Ds);//mH/km
disp(L,"Loop inductance of line(mH/km)");
