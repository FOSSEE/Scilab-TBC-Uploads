////Exa 11.9
clc;
clear;
close;
//Given data :
g1max=60;//kV/cm
g2max=50;//kV/cm
epsilon_r1=4;//relative permitivity
epsilon_r2=2.5;//relative permitivity
D=5;//cm(sheat inside diameter)
d=1;//cm
//g1max/g2max=epsilon_r2*d1/(epsilon_r1*d)
d1=g1max/g2max/epsilon_r2*(epsilon_r1*d);//cm
t_inner=(d1-d)/2;//cm
disp(t_inner*10,"Radial thickness of inner dielectric(mm)");
t_outer=(D-d1)/2;//cm
disp(t_outer*10,"Radial thickness of outer dielectric(mm)");
Vpeak=g1max/2*d*log(d1/d)+g2max/2*d1*log(D/d1);//kV
Vrms=Vpeak/sqrt(2);//kV
disp(Vrms,"Maximum working voltage(rms in kV)");
