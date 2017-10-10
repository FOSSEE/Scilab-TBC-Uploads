//chapter 5
//example 5.15
//page 214
printf("\n")
printf("given")
Vce=9;Ve=4;Ic=4*10^-3;Vcc=18;Vbe = 0.7;
Ie=Ic;
R4=Ve/Ie
Vb=Ve+Vbe
I2=Ic/10
R2=Vb/I2
disp(" with R2=12Kohm standard")
R2=12*10^3;
I2=Vb/R2
R1=(Vce+Ve-Vb)/I2
disp(" with R1=22kohm standard")
R1=22*10^3;
Vr3=Vcc-Vce-Ve
R3=Vr3/(Ic+I2)