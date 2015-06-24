//Exa 11.4
clc;
clear;
close;
//Given data :
V1=11000;//Volt
f=50;//Hz
a=0.645;//cm^2
d=sqrt(4*a/%pi);//cm
d=d/100;//m
D=2.18/100;//m
epsilon_r=3.5;//relative permitivity
V=V1*sqrt(2)/sqrt(3);//V(assuming 3 phase system)
gmax=2*V/d/log(D/d);//V/m
gmax=gmax/10^5;//KV/cm
disp(gmax,"Maximum electrostatic stress(kV/cm)");
gmin=2*V/D/log(D/d);//V/m
gmin=gmin/10^5;//kV/cm
disp(gmin,"Minimum electrostatic stress(kV/cm)");
C=0.024*epsilon_r/log10(D/d);//micro F
disp(C*10^-6,"Capacitance per km length(F)");//
Vp=V1/sqrt(3);//V
Ic=2*%pi*f*C*10^-6*Vp;//A
disp(Ic,"Charging Current per phase per km length(A)");
