//Caption:Find the (a) synchronous speed (b) slip and (c) rotor frequency
//Exa:9.1
clc;
clear;
close;
f=60;//in Hertzs
P=4;//no. of poles
N_fL=1755;//in rpm
N_s=120*f/P;
disp(N_s,'(a) synchronous speed of induction motor (in rpm)=');
s=(N_s-N_fL)/N_s;
disp(s,'(b) Slip at full load =');
f_r=s*f;
disp(f_r,'(c) rotor frequency at full load (in Hertzs)=');