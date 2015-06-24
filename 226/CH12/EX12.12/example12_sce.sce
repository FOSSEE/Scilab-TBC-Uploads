//chapter 12
//example 12.11
//page 498
printf("\n")
printf("given")
rs=600;Ie1=1*10^-3;hfe=50;R1=120*10^3;R2=47*10^3;f1=150;Ie2=2*10^-3;R5=3.3*10^3;R3=12*10^3;Rl=100;
re=26*10^-3/Ie1
hie=(1+hfe)*re
Zi=(R1*R2*hie)/(R1*R2+R1*hie+R2*hie)
Xc1=(Zi+rs)/10
C1=1/(2*3.14*f1*Xc1)//use 6*10^-6 as standard value
Xc2=.65*re
C2=1/(2*3.14*f1*Xc2)
re2=26*10^-3/Ie2
Zo=(R5*(re2+R3/hfe))/(R5+(re2+R3/hfe))
Xc3=.65*(Rl+Zo)
C3=1/(2*3.14*f1*Xc3)