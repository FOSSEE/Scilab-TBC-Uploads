clc;
clear;
//Example 3.35
v=2*10^-5   //[m^2/s]
Npr=0.7 //Prandtl number
k=0.03  //[W/m.K]
D=0.25   //Diameter in [m]
L=0.90*D    //Characteristic length,let  [m]
T1=298  //[K]
T2=403  //[K]
dT=T2-T1    //[K]
Tf=(T1+T2)/2  //[K]
Beta=1/Tf   //[K^-1]
A=%pi*(D/2)^2   //Area in[sq m]
g=9.81  //[m/s^2]

//Case 1: Hot surface facing up
Ngr=g*Beta*dT*(L^3)/(v^2)   //Grashoff number
Nnu=0.15*((Ngr*Npr)^(1.0/3.0))    //Nusselt number
h=Nnu*k/L   //[W/sq m.K]
Q=h*A*dT    //[W]
printf("\n Heat transferred when hot surface is facing up is %f W\n",Q);


//Case 2:For hot surface facing down
Nnu=0.27*(Ngr*Npr)^(1.0/4.0);   //Grashof Number
h=Nnu*k/L   //[W/sqm.K]
Q=h*A*dT    //[W]
printf("\n Heat transferred when hot surface is facing down is %f W\n",Q);
