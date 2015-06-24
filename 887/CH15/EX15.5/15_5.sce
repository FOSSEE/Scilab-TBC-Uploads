clc
//ex15.5
M_r=6000;      //relative permeability
M_o=4*%pi*10^-7;      //permeability of free space
w_r=3*10^-2;      //width of rectangular cross-section
d_r=2*10^-2;      //depth of rectangular cross-section
N=500;      //number of turns of coil
B_gap=0.25;      //flux density
gap=0.5*10^-2;      //air gap
//centerline of the flux path is a square of side 6cm
l_s=6*10^-2;      //side of square
l_core=4*l_s-gap;      //mean length of the iron core
A_core=w_r*d_r;      //cross-sectional area of the core
M_core=M_r*M_o;      //permeability of core
R!_core=l_core/(M_core*A_core);      //reluctance of the core
A_gap=(d_r+gap)*(w_r+gap);      //effective area of gap
M_gap=M_o;      //permeability of air(gap)
R!_gap=gap/(M_gap*A_gap);      //reluctance of gap
R!=R!_gap+R!_core;      //total reluctance
phi=B_gap*A_gap;      //flux
F=phi*R!;      //magnetomotive force
i=F/N;      //current
printf(" All the values in the textbook are approximated hence the values in this code differ from those of Textbook")
disp(i,'Current value in amperes')
