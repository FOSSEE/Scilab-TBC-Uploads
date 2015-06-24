//Chapter 2
//page no 52
//given
clc;
clear ;
l=10*10^-3;         //in m
w=2*10^-3;         //in m
h=2*10^-3;         //in m
V=12;           //in V
u_n=0.14;         //in  m*m/V*s
u_p=0.05;          //in m*m/V*s
q_n=1.6*10^-19;     //in Columbs
q_p=1.6*10^-19;     //in Columbs
p_i=2.4*10^19;     //in columbs
n_i=2.4*10^19;     //in columbs
E=V/l;
v_n=E*u_n;
v_p=E*u_p;
J_n=n_i*q_n*v_n;
J_p=p_i*q_p*v_p;
J=J_n+J_p;
printf("\n Electron velocity :vn is  %.0f m/s ",v_n);//result
printf("\n Hole velocity :vp is  %.3f km/s ",v_p/1000);  // result
printf("\n Current density : Jn %0.2f A/m^2",J);             //Result
A=88*10^-6;
I_T=J*A;
printf("\n Total current :I_T is  %.0f mA ",I_T*1000);      //Result
