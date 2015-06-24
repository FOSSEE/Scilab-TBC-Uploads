//Exa 11.11
clc;
clear;
close;
//Given data :
Vs=66;//kV
d=1;//cm
d1=1+2*1;//cm
D=3+2*1;//cm
epsilon_r1=3;//relative permitivity
epsilon_r2=2.5;//relative permitivity
g2maxBYg1max=d*epsilon_r1/(d1*epsilon_r2);
Vmax=Vs*sqrt(2)/sqrt(3);//kV
//Vmax=g1max*d/2*log(d1/d)+g2max*d1/2*log(D/d1);//kV
g1max=Vmax/(d/2*log(d1/d)+g2maxBYg1max*d1/2*log(D/d1));//kV/cm
disp(g1max,"Potential gradient at the surface of conductor(kV/cm)");
g2max=g1max*g2maxBYg1max;//kV/cm
disp(g2max,"Maximum stress in the outer dielectric(kV/cm)");
Stress=g2max*d1/D;//kV/cm
disp(Stress,"Stress at the surface of outer dielectric(kV/cm)");
