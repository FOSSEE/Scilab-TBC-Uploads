//Caption:Find the (a)frequency of induced voltage (b)phase voltage (c)line voltage
//Exa:7.5
clc;
clear;
close;
N_m=375;//speed of motor (in rpm)
N=10;//no of turns
P=16;//no. of poles
S=144;//no. of slots
Phy=0.025;//flux (in Weber)
S_p=S/P;//slots per pole
Y=180/S_p;//slot span
C_p=Y*7;//coil pitch
K_p=sind(C_p/2);//pitch factor
K_d=(sind(3*(Y/2)))/(3*sind(Y/2));//distribution factor
K_w=K_p*K_d;//winding factor
N_e=P*3*N*K_w/2;//effective no. of turns
f=N_m*P/120;
disp(f,'(a) frequency of induced voltage (in Hertz)=');
E_a=4.44*f*N_e*Phy;
disp(E_a,'(b) Rms value of Phase voltage (in Volts)=');
E_L=E_a*sqrt(3);
disp(E_L,'(c) line voltage (in Volts)=');