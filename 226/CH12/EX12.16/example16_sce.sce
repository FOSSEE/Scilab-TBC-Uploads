//chapter 12
//example 12.16
//page 508
printf("\n")
printf("given")
R1=2.7*10^6;R2=560*10^3;f1=150;Yfs=8000*10^-6;Ie=1.2*10^-3;Rl=80*10^3;R6=8.2*10^3;
Zi=(R1*R2)/(R1+R2)
Xc1=Zi/10
C1=1/(2*3.14*f1*Xc1)
Xc2=.65/Yfs
C2=1/(2*3.14*f1*Xc2)//use 15pF as standard value
re=26*10^-3/Ie
Xc3=.65*re
C3=1/(2*3.14*f1*Xc3)
Xc4=(R6+Rl)/10
C4=1/(2*3.14*f1*Xc4)