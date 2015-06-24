clc;
clear;
//Example 3.31
v=18.97*10^-6   //m^2/s
k=28.96*10^-3   //W/(m.K)
Npr=0.696
D=100   //Outer diameter [mm]
D=D/1000    //[m]
Tf=333  //Film temperature in [K]
Tw=373  //[K]
T_inf=293   //[K]
dT=Tw-T_inf //[K]
Beta=1/Tf   //[K^-1]
g=9.81  //[m/s^2]
L=3 //Length of pipe [m]
Ngr=(g*Beta*dT*(L^3))/(v^2) //Grashof number
Nra=Ngr*Npr
Nnu=0.10*(Ngr*Npr)^(1.0/3.0)    //nusselt number for vertical cylinder
h=Nnu*k/L   //W/(sq m.K)
Q_by_l=h*%pi*D*dT   //Heat loss per metre length [W/m]
printf("\n Hence,Heat loss per metre length is %f W/m \n",Q_by_l);
