//Exa 4.20
clc;
clear;
close;
//Given data :
f=50;//Hz
VL=110;//kV
r=1.05/2;//cm
d1=3.5;//m
d2=3.5;//m
d3=7;//m
epsilon_o=8.854*10^-12;//permitivity
CN=2*%pi*epsilon_o/log((d1*d2*d3)^(1/3)*100/r);//F
disp(CN,"Capacitance per phase per meter  line(F)");
Vph=VL*1000/sqrt(3);//V
Ic=2*%pi*f*CN*Vph;//A/m
disp(Ic/10^-3,"Charging current per phase(A/km) : ");
