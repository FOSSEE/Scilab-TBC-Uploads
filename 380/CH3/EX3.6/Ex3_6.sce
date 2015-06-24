//Caption:Find the (a) frequency of induced emf (b)max value of induced emf  (c)rms value of induced emf  (d)average value of induced emf
//Exa:3.6
clc;
clear;
close;
N=100;//no. of turns in coil
P=4;//number of poles
N_m=1800;//rotor speed (in rpm)
flux_p=4.5*10^-3;//flux per pole (in Wb)
f=(P*N_m)/120;//Refer to eqn:3.30a
disp(f,'(a) frequency of induced emf (in Hertz)=');
//refer to eqn:3.31
E_m=(2*%pi*P*flux_p*N_m)/120;//max value of induced emf per turn
E_mc=N*E_m;
disp(E_mc,'(b) max value of induced emf in coil (in Volts)=');
E_rms=E_mc/sqrt(2);
disp(E_rms,'(c) rms value of induced emf (in Volts)=');
E_avg=(2*E_mc)/%pi;
disp(E_avg,'(d) average value of induced emf (in Volts)=')