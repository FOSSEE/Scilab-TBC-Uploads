//Caption:Calculate the speed and BHP of the motor
//Exam:2.51
clc;
clear;
close;
V=250;//applied emf(in V)
R_sh=0.05;//field resistance (in Ohm)
R_a=0.1;//armature resistance(in Ohm)
I=80;//motor current(in Amp)
A_s=240;//armature slots 
C_s=4;//number of conductor per slot
Z=A_s*C_s;//total number of conductor
E_b=V-I*(R_a+R_sh);//Back emf(in V)
A=2;//number of parallel paths for wave wound
P=6;//poles
F=1.75;//flux per pole (in megalines)
F_1=1.75*10^-2;//flux per pole (in Wb)
N=E_b*60*A/(F_1*Z*P);//speed of the motor (in rpm)
disp(N,'speed of the motor (in rpm)=');
I_p=V*I;//input to the motor(in watts)
L_c=(I^2)*(R_a+R_sh);//copper losses(in watts)
L_i=900;//iron and friction losses(in watts)
L_t=L_c+L_i;//total losses(in watts)
O_p=I_p-L_t;//output(in watts)
B.H.P=O_p/746;//B.H.P. of the motor
disp(B.H.P,'B.H.P. of the motor(in H.P)=');