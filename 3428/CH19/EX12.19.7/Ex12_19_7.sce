//Section-12,Example-7,Page no.-SS.61
//To find the no.of charge carriers essential to get te given conductivity and the no. of Antimony dopant atoms to be added to germanium.
clc;
C=100                        //ohm^-1cm^-1
e=1.6*10^-19                          //C
u_e=2800                         //cm^-1V^-1sec^-1
N_D=C/(e*u_e)
disp(N_D,'No.of charge carriers essential to get the given conductivity(per cm^3)')
a=5.658*10^-8                         //cm
V=a^3                       //cm^3
N_Sb=2.23*10^17                 //No. of Sb atoms per cm^3
N_Ge=8/V                              //No. of atoms of Ge 
N=N_Sb/N_Ge
disp(N,'No. of Antimony dopant atoms to be added to germanium(ppm)')
