//chapter 12
//example 12.14
//page 503
printf("\n")
printf("given")
vp=50*10^-3;Rl=50;Ve2=5;Vcc=12;Vbe=.7;hFE=70;hfe=100;R2=120*10^3;f1=150;R3=150*10^3;R1=5.6*10^3;R4=2.2*10^3;
ip=vp/Rl
disp("select Ie2>ip")
Ie2=2*10^-3;
R4=Ve2/Ie2//use standard 2.2Kohm
R4=2.2*10^3;
Ie2=Ve2/R4
Ic1=1*10^-3;
Vr1=Vcc-(Vbe+Ve2)
R1=Vr1/Ic1//use 5.6kohm and recalculate
R1=5.6*10^3;
Ic1=Vr1/R1
Ib1=Ic1/hFE
hie=hfe*(26*10^-3/Ic1)
hie2=hfe*((26*10^-3)/(2.27*10^-3))
Zi1=(R2*hie)/(R2+hie)
Xc1=Zi1/10
C1=1/(2*3.14*f1*Xc1)
Xc2=R3/100
C2=1/(2*3.14*f1*Xc2)
Zo=(((hie2+R1)/hfe)*R4)/(((hie2+R1)/hfe)+R4)
Xc3=Rl+Zo
C3=1/(2*3.14*f1*Xc3)