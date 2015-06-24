//chapter 12
//example 12.15
//page 407
printf("\n")
printf("given")
Vgsoff=-6;Idss=20*10^-3;Yfs=4000*10^-6;Id=2*10^-3;Vcc=20;Zi=500*10^3;R2=560*10^3;Rl=80*10^3;Vbe=.7;Vce=3;
Vgs=Vgsoff*(1-sqrt(Id/Idss))
Vds=(-Vgsoff)+1-(-Vgs)
Vr3=(Vcc-Vds)/2
Vr4=Vr3;
R3=Vr4/Id//use 3.9kohm as standard and recalculate Vr3 and Vr4
R4=R3;
R4=3.9*10^3;
Vr3=Id*R4
Vr4=Vr3;
Vr2=Vr4-(-Vgs)
Vr1=Vcc-Vr2
R1=(Vr1*R2)/Vr2
R6=Rl/10
Vr5=Vr3-Vbe
Vr6=Vcc-Vr5-Vce
Ic2=Vr6/R6
R5=Vr5/Ic2