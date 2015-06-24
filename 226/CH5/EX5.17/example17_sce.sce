//chapter 5
//example 5.17
//page 220
printf("\n")
printf("given")
hFE=100;
Rc=2.2*10^3;Rb=270*10^3;Re=1*10^3;R1=33*10^3;R2=12*10^3;
S=1+hFE
disp("for collector to base bias")
S=(1+hFE)/(1+(hFE*Rc)/(Rc+Rb))
disp(" for voltage divider bias")
disp("S=(1+hFE)/(1+hFE*Re(Re+R1||R2))")
S=(1+hFE)/(1+(hFE*Re)/(Re+(R1*R2)/(R1+R2)))