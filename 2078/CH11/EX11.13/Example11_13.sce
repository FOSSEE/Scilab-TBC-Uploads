//Exa 11.13
clc;
clear;
close;
//Given data :
Vs=66;//kV
r=0.5;//cm
g1max=50;//kV/cm
g2max=40;//kV/cm
g3max=30;//kV/cm
epsilon_r1=4;//relative permitivity
epsilon_r2=4;//relative permitivity
epsilon_r3=2.5;//relative permitivity
//Q=2*%pi*epsilon0*epsilon_r1*r*g1max=2*%pi*epsilon0*epsilon_r2*r*g2max=2*%pi*epsilon0*epsilon_r3*r*g3max
r1=epsilon_r1*r*g1max/(epsilon_r2*g2max);//cm
r2=epsilon_r2*r1*g2max/(epsilon_r3*g3max);//cm
Vmax=Vs*sqrt(2);//kV
//Vmax=g1max*r*log(r1/r)+g2max*r1*log(r2/r1)+g3max*r2*log(R/r2);//kV
R=exp((Vmax-g1max*r*log(r1/r)-g2max*r1*log(r2/r1))/g3max/r2)*r2;//cm
D=2*R;//cm
disp(D,"Inner diameter of lead sheath(cm)");
