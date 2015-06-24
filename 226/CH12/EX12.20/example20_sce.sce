//chapter 12
//example 12.20
//page 521
printf("\n")
printf("given")
Vcc=20;Rl=90*10^3;hfe=50;hie=1.2*10^3;hib=24;Vce=3;Vce1=Vce;Ve=5;Vbe=.7;
Rc=Rl/10//use 8.2kohm as standard value
Rc=8.2*10^3;
Vrc=Vcc-Vce-Vce1-Ve
Ic=Vrc/Rc
Re=Ve/Ic
Re=4.7*10^3;//use 4.7 as standard value
R3=10*Re
Vb1=Ve+Vbe
I3=Vb1/R3
Vb2=Ve+Vce+Vbe
Vr2=Vb2-Vb1
R2=Vr2/I3
R1=(Vcc-Vb2)/I3