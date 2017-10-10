//chapter 12
//example 12.11
//page 497
printf("\n")
printf("given")
Vp=100*10^-3;Rl=100;Vbe=.7;Vcc=20;
ip=Vp/Rl
disp("select Ie2>ip")
Ie2=2*10^-3;
Ve1=5;Vce1=3;
Vb2=Ve1+Vce1
Vc1=Vb2;
Ve2=Vb2-Vbe;
Vr2=Ve1+Vbe;
R5=Ve2/Ie2//use 3.3Kohm standard value
R5=3.3*10^3;
Ic1=1*10^-3;
Vr3=Vcc-Vb2
R3=Vr3/Ic1
R4=Ve1/Ic1//use 4.7Kohm standard value
R4=4.7*10^3;
Vb1=Ic1*R4+Vbe
R2=10*R4
R1=((Vcc-Vb1)*R2)/Vr2