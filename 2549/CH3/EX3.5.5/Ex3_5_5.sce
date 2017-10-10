//Ex3.5.5
//calculation of necessary ac input power for HWR and FWR
clc;
clear;
//given
Pl_dc=500;//dc load power
n_HWR=0.4;//efficiency for half wave rectifier
n_FWR=0.812// efficiency for full wave rectifier
Pac_HWR=Pl_dc/n_HWR;
disp('**** half wave rectifier ****')
disp('Watt',Pac_HWR,'necessary ac input power is :')
Pac_FWR=Pl_dc/n_FWR;
disp('**** full wave rectifier ****')
disp('Watt',Pac_FWR,'necessary ac input power is :')
