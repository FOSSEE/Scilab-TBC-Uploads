clc;
Cai=90;
alpha=20*%pi/180;
Cf=Cai*sin(alpha)

Cb=4*Cf/3;

v=0.6686;//m^3/kg
m=9000/3600;
A=m*v/Cf
h=0.04;
r=A/(2*%pi*h)
N=Cb/(A/h)
disp("rev/s",N,"Wheel speed is:")

//partII
Cw=2*Cai*cos(alpha)-Cb;
DP=m*Cb*Cw;
disp("kW",DP/1000,"diagram powar is:");

//part III
R=Cb*Cw
Cri=[(Cai^2)+(Cb^2)-(2*Cai*Cb*cos(alpha))]^0.5
Ei=Cai^2-(Cri^2/2)
DE=R/Ei
disp("%",DE*100,"diagram efficiency is:");

//part IV
Ed=(Cai^2-Cri^2)/2;
Td=2*Ed;
disp("kJ/kg",Td/1000,"total enthalpy drop per stage:")
