clc
clear

NOC=6;
IP=89.5;
N=800;
LD=1.25;
Em=0.8;
Pbemp=5;
Em=0.8;
Pimep=Pbemp/0.8;

D3=(IP*2*60*4)/(Pimep*100*LD*(22/7)*N*NOC);
D=D3^(1/3);
L=LD*D;
printf('L= %3.0f mm',L*1000);
printf('\n');
printf('D= %3.0f mm',D*1000);
printf('\n');
