//Determine the load bus voltage
clear 
clc;
load1=10+%i*15;//load per phase(MVA)
SCC=250/3;
V=11/sqrt(3);
P=30;
Q=45;
Z=(11/sqrt(3))^2/(250/3);//Equivalent short circuit impedence
dsc=atand(5);
R=.0949;
X=.4746;
//Using equation: V^2= (Vcosd+PR/V)^2 + (Vsind+QX/V)^2, we get 
y=poly([51.7 0 -27.5 0 1],'V','c');
disp(y,"we get equation :");
X=roots(y);
disp(X,"Roots of above equation are ");
V=5.046;
mprintf("V=%.3f\n",V);
dV=6.35-V;
Ssc=250;
//using expression ,a=dV/v=1(Pcos(dsc)+Qsin(dsc))/Ssc +j(Psin(dsc)-Qcos(dsc))/Ssc
a=(P*cosd(dsc)+Q*sind(dsc))/Ssc +%i*(P*sind(dsc)-Q*cosd(dsc))/Ssc;
disp(abs(a),"dV/V= ");
