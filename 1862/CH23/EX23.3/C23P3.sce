clear
clc
//to find final equilibrium temperature of the system

//Given:
//mass of copper cube
mc = 75//in gram
//temperature of oven
T0 = 312//in degree celsius
//mass of water
mw = 220//in gram
//heat capacity of beaker
Cb = 190//in J/K
//intial temperature of water and beaker
Ti = 12.0//in degree celsius
//heat capacity of water
Cw = 4190//in J/Kg.K
//heat capacity of copper cube
Cc = 387//in J/Kg.K

//Solution:
//applying laws of thermodynamics
//for equilibrium condition
//final equilibrium temperature of the system
Tf = (((mw*10^-3)*Cw*Ti)+(Cb*Ti)+((mc*10^-3)*Cc*T0))/(((mw*10^-3)*Cw)+(Cb)+((mc*10^-3)*Cc))//in degree celsius //taking masses in Kg
//heat transfer for water
Qw = (mw*10^-3)*Cw*(Tf-Ti)//in J
//heat transfer for beaker
Qb = Cb*(Tf-Ti)//in J
//heat transfer for copper
Qc = (mc*10^-3)*Cc*(Tf-T0)//in J
Qw = nearfloat("pred",7011)
Qb = nearfloat("pred",1441)
Qc = nearfloat("pred",-8450)

printf ("\n\n Final equilibrium temperature of the system Tf = \n\n %.1f degree celsius" ,Tf);
printf ("\n\n Heat transfer for water Qw = \n\n %4i J" ,Qw);
printf ("\n\n Heat transfer for beaker Qb = \n\n %4i J" ,Qb);
printf ("\n\n Heat transfer for copper Qc = \n\n %4i J" ,Qc);
