//Example No. 5.1
clc;
clear;
close;
format('v',7);

//Given Data : 
T=10;//turns
Coil=144;//no. of coils
R=0.011;//ohm
fi=0.05;//Wb(flux per pole)
N=200;//rpm
par_paths=2;//for wave winding
T_path=Coil*T/par_paths;//no. of turns in each parallel path
R_path=R*T_path;//ohm
Ra=R_path/par_paths;//ohm(armature resistance)
disp(Ra,"Armature resistance in ohm : ");
p=12;//poles
emf=par_paths*Coil*T*p*fi*N/60/2;//V
R1=1000;//ohm
IL=emf/R1;//A
Ia=IL;//A
T=par_paths*Coil*T*p*fi*Ia/2/%pi/par_paths;//N-m
disp(T,"Torque in N-m : ");
