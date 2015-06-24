clc
clear

n=6;        //Number of Cylinders
IP=90;      //Indicated Power in kW
Eff=0.85;       //Mechanical Efficiency
Pmb=5;      //in bar
LD=1.5;
Pm=Pmb/Eff;
N=800;
nx=N/2;

//Length=1.5*D
D=[[IP*60*4]/[Pm*100*(22/7)*LD*nx*n]]^(1/3);
printf('D= %3.4f mm',D*100);
printf('\n');
L=D*LD;
printf('L= %3.4f mm',L*100);
printf('\n');
