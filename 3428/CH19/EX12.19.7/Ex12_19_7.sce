//Section-12,Example-7,Page no.-SS.61
//To find the no.of charge carriers essential to get te given conductivity and the no. of Antimony dopant atoms to be added to germanium.
clc;
C=100
e=1.6*10^-19
u_e=2800
N_D=C/(e*u_e)
disp(N_D,'No.of charge carriers essential to get the given conductivity(per cm^3)')
a=5.658*10^-8
V=a^3
N_Sb=2.23*10^17
N_Ge=8/V
N=N_Sb/N_Ge
disp(N,'No. of Antimony dopant atoms to be added to germanium(ppm)').
