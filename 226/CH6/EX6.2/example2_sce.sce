//chapter 6
//example 6.2
//page 244
printf("\n")
printf("given")
Rc=2.2*10^3;Re=2.7*10^3;R1=18*10^3;R2=8.2*10^3;Vbe=.7
disp("drawing dc load line")
Rldc=Rc+Re
disp(" for Vce")
Ic=0;Vcc=20;
Vce=Vcc-Ic*(Rc+Re)
disp("plot point A at")
Ic=Vcc/(Rc+Re)
disp("plot point B Ic=4.08mA and Vce=0")
disp(" draw dc laod line through point A nad B")
Vb=(Vcc*R2)/(R1+R2)
Ve=Vb-Vbe
Ic=Ve/Re
Ie=Ic
disp("drawing the ac load line")
Rlac=Rc//when there is no external Rl
Vce=Ic*Rc