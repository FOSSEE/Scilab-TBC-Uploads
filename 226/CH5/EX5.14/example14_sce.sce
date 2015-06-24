//chapter 5
//example 5.14
//page 212
printf("\n")
printf("given")
Vce=3;Ve=5;Ic=1*10^-3;Vcc=12;
Ie=Ic;
R4=Ve/Ie
disp(" with Ic=1mA and R4=4.7Kohm")
R4=4.7*10^3;
Ve=Ic*R4
Vc=Ve+Vce
Vr3=Vcc-Vc
R3=Vr3/Ic
Vb=Ve+Vbe
I2=Ic/10
R2=Vb/I2
disp(" with R2=56Kohm and Vb=5.4V")
R2=56*10^3;
I2=Vb/R2
R1=(Vcc-Vb)/I2