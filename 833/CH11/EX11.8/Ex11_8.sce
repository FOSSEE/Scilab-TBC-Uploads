//Caption:Find (a)% reduction in stator voltage and (b)the power factor of the rotor circuit
//Exa:11.8
clc;
clear;
close;
R_r=0.02//Rotor resistance per phase(in ohm)
X_r=0.1//Rotor reactance per phase(in ohm)
s=4//Slip(in%)
S=100-s
T_f=((s/100)*R_r)/((R_r^2)+(((s/100)^2)*(X_r^2)))
S_r=1-(.5*(S/100))
T=(S_r*R_r)/((R_r^2)+((S_r^2)*(X_r^2)))
Re=(1-sqrt(T_f/T))*100
disp(Re,'(a)% reduction in stator voltage(in %)=')
pf=R_r/(sqrt((R_r^2)+((S_r^2)*(X_r^2))))
disp(pf,'(b)Power factor=')