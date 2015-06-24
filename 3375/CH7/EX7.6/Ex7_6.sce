//Example 7.6
//Moody design
//Page No. 435
clc;clear;close;

U=3;         //in m/s
b=1;          //in m
L=800;       //in m
Re_x=10^6;        //no unit
rho=1000;           //in kg/m^3
nu=1.02*10^-6;      //in m^2/s
ut_ep_v=100;          //no unit

//calculation via trial and error cannot be shown here
x=268;      // = R/e_p
u_t=U/(2.5*log(x)+8.5);
e_p=ut_ep_v*nu/u_t;
R=x*e_p;
D=2*R;
f=0.023;        //no unit
yl=5*nu/u_t;
yb=13*yl;
yl=yl*10^3;    //conversion to mm
yb=yb*10^3;    //conversion to mm
P=%pi*rho*nu*L*u_t^2*Re_x;
printf('\nDiameter = %g m\nLaminar Sub-Layer Thickness = %g mm\nBuffer Layer Thickness = %g mm\nPower required = %g W',D,yl,yb,P);
