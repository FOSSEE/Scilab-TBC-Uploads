clc;
clear;
//Example 3.38
v=23.13*10^-6   ; //[m^2/s]
k=0.0321   ; //[W/m.K]
Beta=2.68*10^-3; //[K^-1]
Tw=443  ;//[K]
T_inf=303  ; //[K]
dT=Tw-T_inf;    //[K]
g=9.81 ; //[m/s^2]
Npr=0.688;   //Prandtl number
D=100 ;  //Diameter [mm]
D=D/1000    //Diameter [m]
Nra=(g*Beta*dT*(D^3)*Npr)/(v^2)
Nnu=0.53*(Nra^(1.0/4.0))    //Nusselt number
h=Nnu*k/D   //[W/(m^2.K)]
h=7.93      //Approximation
e=0.90; //Emissivity
sigma=5.67*10^-8    ;
//Q=Q_conv+Q_rad  //Total heat loss
//for total heat  loss per meter length
Q_by_l=h*%pi*D*dT+sigma*e*%pi*D*(Tw^4-T_inf^4)  //[W/m]
printf("Total heat loss per metre length of pipe is %f W/m",Q_by_l)

