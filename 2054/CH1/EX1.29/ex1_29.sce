//Exa:1.29
clc;
clear;
close;
f=50;//in hertz
P=4;//No.of poles
N_s=120*f/P;//Synchronous Speed (in rpm)
N=1440;//Full load speed (in rpm)
s1=(N_s-N)/N_s;//Full load Slip
N2=1200;//in rpm
s2=(N_s-N2)/N_s;//slip
R2=0.25;//ohms per phase
R=(s2*R2/s1)-R2;
disp(R,'Value of additional resistance (in ohms)=');