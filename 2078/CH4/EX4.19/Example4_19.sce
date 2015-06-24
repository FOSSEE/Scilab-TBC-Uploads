//Exa 4.19
clc;
clear;
close;
//Given data :
f=50;//Hz
VL=220;//KV
r=20/2/1000;//m
d1=3;//m
d2=3;//m
d3=6;//m
epsilon_o=8.854*10^-12;//permitivity
CN=2*%pi*epsilon_o/log((d1*d2*d3)^(1/3)/r);//F
disp(CN,"Capacitance per phase per meter  line(F)");
Vph=VL*1000/sqrt(3);//V
Ic=2*%pi*f*CN*Vph;//A
disp(Ic*1000,"Charging current per phase(mA) : ");
