//chapter 12
//example 12.8
//page 491
printf("\n")
printf("given")
Ve1=5;Vce1=3;Vce2=3;Vbe=.7;Vcc=14;Rl=40*10^3;
Vb2=Ve1+Vce1
Vc1=Vb2;
Ve2=Vb2-Vbe
Vr5=Vcc-Ve2-Vce2
R5=Rl/10//use 3.9Kohm satandard value
R5=3.9*10^3;
Ic2=Vr5/R5
R6=Ve2/Ic2//use 8.2Kohm as standard and recalculate
R6=8.2*10^3;
Ic2=Ve2/R6
Vr3=Vcc-Vc1
disp(" Ic1>>Ib2,select Ic1=1mA")
Ic1=1*10^-3;
R3=Vr3/Ic1//use standard value as 5.6Kohm and recalculate Ic1 in order ti keep Vb2=8V
R3=5.6*10^3;
Ic1=Vr3/R3
R4=Ve1/Ic1
Vr2=Ve1+Vbe
Vr1=Vcc-Ve1-Vbe
R2=10*R4
I2=(Ve1+Vbe)/R2
R1=(Vr1*R2)/Vr2