
clc;
clear;
//Example 3.16
v=20.92*10^-6    //sq m/s
k=3*10^-2    //W/(m.K)
Npr=0.7
u_inf=25    //[m/s]
d=50    //[mm]
d=d/1000    //[m]
Nre=u_inf*d/v    //Reynold's number
Tw=397    //[K]
T_inf=303    //[K]

//Case 1: Circular tube

Nnu=0.0266*Nre^(0.805)*Npr^(1.0/3.0);
h=Nnu*k/d    //[W/sq m.K]
A=%pi*d    //Area in [sq m]
Q=h*A*(Tw-T_inf)    //[W]
Q_by_l1=h*%pi*d*(Tw-T_inf)    //[W/m]

//Case 2:Square tube
A=50*50    //Area in [sq mm]
P=2*(50+50)    //Perimeter [mm]
l=4*A/P       //[mm]
l=l/1000        //[m]
Nnu=0.102*(Nre^0.675)*(Npr^(1.0/3.0))
h=Nnu*k/d    //W/(sq m.K)
A=4*l*l        //[sq m]

Q=h*A*(Tw-T_inf)
Q_by_l2=Q/l    //[W/m]
printf("\nRate of heat flow from the square pipe=%f W/m  \n which is more than that from the circular pipe which is equal to %f W/m",Q_by_l2,Q_by_l1);
