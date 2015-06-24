////Example 7.11
clc;
clear;
close;
format('v',7);
//Given data :
g=9.81;//gravity constanty
D1=100/1000;//meter
D2=200/1000;//meter
PQ=100;//meter
QR=100;//meter
slope=1/100;//upward slope
Q=0.02;//cumec
p1=2;//kg/cm^2(Pressure in 100 mm dia pipe)
f=0.02;//unitless
Q_P=100/100;//meter(Point Q hight respect to point P)
Q_R=200/100;//meter(Point Q hight respect to point R)
v1=Q/(%pi/4*D1^2);//m/sec
v2=Q/(%pi/4*D2^2);//m/sec
hf1=4*f*PQ*v1^2/(2*g*D1);//meter
hf2=4*f*QR*v2^2/(2*g*D2);//meter
hse=(v1-v2)^2/2/g;//meter(loss due to sudden enlargement)
//Section PQ
Z1P=0;//meter(Datum Head)
H1P=v1^2/2/g;//meter(velocity Head)
p1BYw=p1*10^4/1000;//meter(Pressure Head at P)
Z1Q=1;//meter(Datum Head)
H1Q=v2^2/2/g;//meter(velocity Head)
//Applying bernaullis theorem
p2BYw=Z1P+p1BYw+H1P-Z1Q-H1Q-hf1;//meter(Pressure Head at Q)
disp(p1BYw,"Pressure Head at point P(m)")
disp(H1P,"Velocity Head at point P(m)")
disp(p2BYw,"Pressure Head at point Q(m)")
//Section QR
//Applying bernaullis theorem
p2dashBYw=p2BYw+H1P-H1Q-hse;//meter(Pressure Head at Q)
Z2=1;//meter(Datum Head)
H1Q=v2^2/2/g;//meter(velocity Head)
Z3=2;//meter(Datum Head at R)
H1R=v2^2/2/g;//meter(velocity Head at R)
//Applying bernaullis theorem
p3BYw=Z2+p2dashBYw+H1Q-Z3-H1R-hf2;//meter(Pressure Head at R)
disp(H1Q,"Velocity Head at point Q after enlargemant(m)")
disp(p2dashBYw,"Pressure Head at point Q after enlargemant(m)")
disp(p3BYw,"Pressure Head at point R(m)")
disp(H1R,"Velocity Head at point R(m)")
//Answer in the book is wrong for some calculations.
