//chapter 5
//example 5.16
//page 216
printf("\n")
printf("given")
Vc=5;Ic=1*10^-3;hFE=70;Vbe=.7;Vee=9;Vcc=Vee;Re=8.2*10^3;
Ve=Vee-Vbe
Ie=Ic;
R3=Ve/Ie
disp(" with R3=8.2kohm standard value")
R3=8.2*10^3;
Ie=Ve/R3
Vr2=Vcc-Vc
R2=Vr2/Ic
Ib=Ic/hFE
Vr1=Vbe/10
R1=Vr1/Ib
disp(" use 4.7Kohm as standard")
//the transistor emitter terminal is .7 below ground and voltage across Re is
Ve=Vee-Vbe
Ie=Ve/Re
Vc=Vcc-(Ie*3.9*10^3)