//chapter 12
//example 12.18
//page 516
printf("\n")
printf("given")
hFE=60;hfe=60;hie=1.4*10^3;Rl=70*10^3;Vce=3;Vbe=.7;Vcc=10;
Rc2=Rl/10//use 6.8Kohm as standard value
Vrc2=Vcc+Vbe-Vce
Ic=Vrc2/Rc2
Ie=Ic;
Re=(Vcc-Vbe)/(2*Ie)//use 4.7 as standard value
Re=4.7*10^3;
Rb=Vbe/(10*(Ic/hFE))
Rb1=Rb;