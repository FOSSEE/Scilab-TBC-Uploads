//Exa 11.12
clc;
clear;
close;
//Given data :
Vs=66;//kV
d=2;//cm
d1=2+2*1;//cm
D=4+2*1;//cm
epsilon_r1=5;//relative permitivity
epsilon_r2=3;//relative permitivity
g2maxBYg1max=d*epsilon_r1/(d1*epsilon_r2);
Vmax=Vs*sqrt(2)/sqrt(3);//kV
//Vmax=g1max*d/2*log(d1/d)+g2max*d1/2*log(D/d1);//kV
g1max=Vmax/(d/2*log(d1/d)+g2maxBYg1max*d1/2*log(D/d1));//kV/cm
disp(g1max,"Potential gradient at the surface of conductor(kV/cm)");
g2max=g1max*g2maxBYg1max;//kV/cm
disp(g2max,"Maximum stress in the outer dielectric(kV/cm)");
