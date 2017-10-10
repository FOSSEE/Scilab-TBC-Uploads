//To determine the magnetic parameters of a steel ring

clc;
clear;

d=30*(10^-2); // Mean diameter
m0=4*%pi*(10^-7);
lg=1*(10^-3); //Air Gap length
r=(2*(10^-2))/2; // radius of the circular part of the air gap 
Ag=%pi*r*r; // Area of the air gap
N=600; // No of turns
I=2.5;// Current 

Ip=40/100; // Iron path usage
Agp=1-Ip; // Air gap usage

mmf=N*I; 
mmfs=Ip*mmf; // mmf required for the steel
mmfg=Agp*mmf; // mmf required for the air gap

Rg=lg/(m0*Ag); // Reluctance of the air gap

phi=mmfg/Rg; // Flux through the gap

Rs=mmfs/phi; // Reluctance of steel
Rt=Rs+Rg; // Total reluctance
B=phi/Ag; // Flux density of air

printf('i) mmf of air gap and steel ring = %gAT and %gAT\n',mmfg,mmfs)
printf('ii) Magnetic flux = %g mWb\n',phi*1000)
printf('iii) Reluctance = %g M ohms \n',Rt/(10^6))
printf('iv) Flux density = %g T\n',B)



