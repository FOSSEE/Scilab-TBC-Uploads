//chapter 18
//example 18.8
//page 778
printf("\n")
printf("given")
Vo=12;hFE1=20;hFE2=50;Il=250*10^-3;
Vz=.75*Vo
Vz=9.1;//use standard value for 1N757 diode
Iz1=10*10^-3;
R1=(Vo-Vz)/Iz1
I3=1*10^-3;
disp(" when V0=12V(moving contact at top of R5)")
R3=(Vo-Vz)/I3
R=Vz/I3
disp(" when Vo=15V moving contact at bottom of R5")
Vo=15;
I3=Vo/(R+R3)
R4=Vz/I3
R5=R-R4
Ir6=.5*10^-3;
R6=Vo/Ir6
disp(" op-amp output current")
Ib2=Il/(hFE1*hFE2)