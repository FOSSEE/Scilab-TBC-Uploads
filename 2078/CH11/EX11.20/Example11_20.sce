//Exa 11.20
clc;
clear;
close;
//Given data :
Vs=11;//kV
f=50;//Hz
D=2;//cm
d=0.5;//cm
epsilon_r=3.5;//relative permitivity
pf=0.05;//power factor
C=0.024*epsilon_r/log10(D/d)*10^-6;// F/km
disp(C*10^6,"Capacitance of the cable(micro F)");
Vp=Vs*1000/sqrt(3);//Volt
Ic=2*%pi*f*C*Vp;//A
disp(Ic,"Charging current(A)");
fi=acosd(pf);//degree
del=90-fi;//degree(Dielectric loss angle)
loss_dielectric=2*%pi*f*C*Vp^2*tand(del);//W
disp(loss_dielectric,"Dielectric loss(W)");
R_INS=Vp^2/loss_dielectric;//ohm
disp(R_INS/10^6,"Equivalent insulation resistance(Mohm)");
