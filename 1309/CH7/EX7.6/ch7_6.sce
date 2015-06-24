clc;
clear;
printf("\t\t\tChapter7_example6\n\n\n");
//  Estimation of the drag due to skin friction
// properties of water at 68°F from Appendix Table C.11
rou= 62.4; // density in Ibm/cu.ft
v= 1.083e-5; // viscosity in sq.ft/s 
V_inf=5*.5144/.3048; // barge velocity in ft/s using conversion factors from appendix table A1
printf("\nThe barge velocity is %.2f ft/s",V_inf);
L=20; // Length of barge in ft
Re_L=V_inf*L/v; // Reynolds number at plate end
printf("\nThe Reynolds number at plate end is %.2e",Re_L);
Cd=0.003; //value of Cd corresponding to the Reynolds number from figure 7.11
gc=32.2;
b=12; // width in ft
Df=(Cd*rou*V_inf^2*b*L)/(2*gc);
printf("\nThe drag force is %d lbf",Df);
