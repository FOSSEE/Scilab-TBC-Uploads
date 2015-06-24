clc;clear;
//Example 8.17

//given data
V=200;
P1=100;
P2=1000;
P0=100;
T=300;

//constants used
R=0.287;//in kPa m^3/kg K

//calculations
//Xin - Xout = Xdestroyed = X2 - X1
m2=P2*V/(R*T);
X2=R*T*(log(P2/P0)+P0/P2-1);
Wrev=m2*X2/1000;
Wrev=round(Wrev);
disp(Wrev,'Work requirement in MJ')
