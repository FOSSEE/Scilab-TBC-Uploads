clc
//ex15.6
w_core=2*10^-2;      //width
d_core=2*10^-2;      //depth
A_core=w_core*d_core;      //area of core
M_r=1000;      //relative permeability
M_o=4*%pi*10^-7;      //permeability of free space
gap_a=1*10^-2;
gap_b=0.5*10^-2;
N=500;      //number of turns of coil
i=2;      //current in the coil
l_c=10*10^-2;      //length for center path
R!_c=l_c/(M_r*M_o*A_core);      //reluctance of center path
//For left side
//taking fringing ino account
A_gap_a=(w_core+gap_a)*(d_core+gap_a);      //area of gap a
R!_gap_a=gap_a/(M_o*A_gap_a);      //reluctance of gap a
l_s=10*10^-2;      //side of square
l_core_l=3*l_s-gap_a;      //mean length on left side
R!_core_l=l_core_l/(M_r*M_o*A_core);      //reluctance of core
R!_L=R!_core_l+R!_gap_a;      //total reluctance on left side
//For right side
//taking fringing ino account
A_gap_b=(w_core+gap_b)*(d_core+gap_b);      //area of gap b
R!_gap_b=gap_b/(M_o*A_gap_b);      //reluctance of gap b
l_s=10*10^-2;      //side of square
l_core_r=3*l_s-gap_b;      //mean length on right side
R!_core_r=l_core_r/(M_r*M_o*A_core);      //reluctance of core
R!_R=R!_core_r+R!_gap_b;      //total reluctance on right side
R!_T=R!_c+1/((1/R!_L)+(1/(R!_R)));      //total reluctance
phi_c=N*i/(R!_T);      //flux in the center leg of coil
//by current-division principle
phi_L=phi_c*R!_R/(R!_L+R!_R);      //left side
phi_R=phi_c*R!_L/(R!_L+R!_R);      //right side
B_L=phi_L/A_gap_a;      //flux density in gap a
B_R=phi_R/A_gap_b;      //flux density in gap b
printf(" All the values in the textbook are approximated hence the values in this code differ from those of Textbook")
disp(B_L,'flux density in gap a in tesla')
disp(B_R,'flux density in gap b in tesla')
