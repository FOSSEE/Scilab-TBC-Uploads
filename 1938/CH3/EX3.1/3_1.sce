clc,clear
printf('Example 3.1\n\n')

Pole=6
V=500
A=2 //because of wave wound armature
Z=1200 //number of armature conductors
phi=20*10^-3 //useful flux per pole
Ra=0.5 ,Rsh=250  //armature and field resistance
Il=20 //current drawn from supply
mechanical_losses=900
Ish=V/Rsh
Ia=Il-Ish
Eb=V-Ia*Ra  //because V=Eb+Ia*Ra
N=Eb*60*A/(phi*Pole*Z)   //Eb=phi*Pole*N*Z/(60*A)

P_m=Eb*Ia  //Electrical equivalent of mechanical power
omega=2*%pi*N/60
Tg=P_m/omega

P_out=P_m-mechanical_losses
T_sh=P_out/omega  //Useful torque
P_in=V*Il
percentage_efficiency=100*P_out/P_in

printf('Speed developed is %.3f r.p.m\nTorque developed is %.2f N-m\n\n(i)  Useful torque is %.2f N-m\n(ii) Efficiency is %.2f percent',N,Tg,T_sh,percentage_efficiency)
