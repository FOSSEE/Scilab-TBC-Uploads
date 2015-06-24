clc
clear

NOC=6;
N=820;
n=N/2;
IP=90;
LD=1.4;
Pbm=5;
Em=0.79;
BP=IP*Em;
D=[[IP*60*2]/[Pbm*100*(22/7)*(1/4)*LD*N*NOC]]^(1/3);
printf('D= %3.0f mm',D*1000);
printf('\n');
L=LD*D;
printf('L= %3.0f mm',L*1000);
printf('\n');
