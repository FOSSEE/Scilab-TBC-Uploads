//7.2
clc;
C1=50*10^-12;
r2=1500/%pi;
r3=120;
Cs=C1*r2/r3*10^12;
printf("Cable capacitance=%.1f pF",Cs)
C2=0.95*10^-6;
rs=C2*r3/(C1*10^6);
printf("\nParallel loss resistance=%.2f Mega-ohm",rs)
w=314;
Loss_angle=atand(rs*w*Cs);
printf("\nLoss angle=%.1f degree",Loss_angle)