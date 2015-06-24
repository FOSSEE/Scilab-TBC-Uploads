clc
clear

BP=185;     //Brake Power
Eff=0.75;
IP=BP/Eff;
LD=1.5;
N=35;
n=N/2;
nx=4;
Pm=830;     //in kPa
D=[[IP*4]/[Pm*(22/7)*LD*nx*n]]^(1/3);
printf('D= %3.0f mm',D*1000);
printf('\n');
L=D*LD;
printf('L= %3.0f mm',L*1000);
printf('\n');
