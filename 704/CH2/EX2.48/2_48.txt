//Caption:Determine the internal losses,torque & efficiency of the motor
//Exam:2.48
clc;
clear;
close;
V=240;//supply voltage(in V)
I=80;//motor taking current(in Amp)
H.p=20;//motor giving H.P.
I_p=V*I;//input (in watts)
O_p=H.p*735.5;//output (in watts)
L_i=I_p-O_p;//internal losses(in watts)
disp(L_i,'internal losses in motor(in watts)=');
N=1300;//motor speed (in rpm)
T=O_p*60/(2*3.14*N);//torque generated in motor(in Nw-m)
disp(T,'torque generated in motor(in Nw-m)=');
E=(O_p/I_p)*100;//efficiency of the motor
disp(E,'efficiency of the motor(in %)=');