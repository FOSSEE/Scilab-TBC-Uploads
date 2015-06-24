clc;
clear;
A=1*(10^(-4));//m^2
p1=80;//kPa(abs)
p2=40;//kPa(abs)
p0=101;//kPa(abs)
pcritical=0.528*p0;//kPa(abs)
k=1.4;
//for (a) pth=p1>pcritical
Math1=((((p0/p1)^((k-1)/k))-1)/((k-1)/2))^0.5;//Math=Mach number at throat
//dth/d0=p1/p0; dth=density at throat
dth1=(1.23)*(1/(1+(((k-1)/2)*(Math1^2))))^(1/(k-1));//kg/(m^3); density at throat
Tth1=(288)*(1/(1+(((k-1)/2)*(Math1^2))));//K; temperature at throat
Vth1=Math1*(286.9*Tth1*k)^0.5;//m/sec
m1=dth1*A*Vth1;//kg/sec
disp("kg/sec",m1,"a) The mass flowrate through the duct=")
//for (b) pth=p2<pcritical, hence
Math2=1;
dth2=1.23*(1/(1+(((k-1)/2)*(Math2^2))))^(1/(k-1));//kg/(m^3); density at throat
Tth2=(288)*(1/(1+(((k-1)/2)*(Math2^2))));//K; temperature at throat
Vth2=Math2*(286.9*Tth2*k)^0.5;//m/sec
m2=dth2*A*Vth2;//kg/sec
disp("kg/sec",m2,"b) The mass flowrate through the duct=")