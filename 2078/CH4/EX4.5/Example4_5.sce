//Exa 4.5
clc;
clear;
close;
//Given data :
r=1.2;//cm
rdash=0.7788*r;//cm
d12=0.12*100;//cm
d11dash=(0.2+1.2)*100;//cm
d22dash=(0.2+1.2)*100;//cm
d12dash=(0.2+1.2+0.2)*100;//cm
d21dash=(1.2)*100;//cm
Dm=(d11dash*d12dash*d21dash*d22dash)^(1/4);//cm
d11=0.93456;//cm
d22=0.93456;//cm
d12=20;//cm
d21=20;//cm
Ds=(d11*d12*d21*d22)^(1/4);//cm
L=0.4*log(Dm/Ds);//mH/km
disp(L,"Loop inductance of line(mH/km)");
