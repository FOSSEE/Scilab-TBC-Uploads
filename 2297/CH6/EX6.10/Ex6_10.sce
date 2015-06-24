//Example 6.10// Speed ,motor speed,and frequency 
clc;
clear;
close;
format ('v',8)
//given data :
disp("part (a)")
f=50;//frquency  in Hz
P=4;// number of pole
Ns=(120*f)/P;//speed in rom
disp(Ns," The speed of rotating magnetic field,(rpm) = ")
disp("part (b)")
S=0.035;// slip
N=Ns*(1-S);//motor speed in rpm
disp(N,"Motor speed,(rpm) = ")
disp("part (c)")
S=0.04;// slip
F=S*f;//frequency in Hz
disp("Frequency "+string (F)+" Hz or "+string(120)+" rpm ")
disp("part (d)")
f=50;// in Hz
F=f;//frequency in Hz
disp(F,"Frequency of rotor current,(Hz) = ")
