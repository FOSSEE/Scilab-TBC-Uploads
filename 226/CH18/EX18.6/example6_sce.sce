//chapter 18
//example 18.6
//page 770
printf("\n")
printf("given")
Vc5=9.8;Vb2=Vc5;Vce5=3;Vbe=.7;Vo=12;
Vr9=Vc5-Vce5
Vz2=Vr9+Vbe
Ic5=1*10^-3;
R8=(Vo-Vc5)/Ic5
Ir9=2*Ic5
R9=Vr9/Ir9
disp(" Iz2>>Ib5 and Iz2>(Izk for the zener diode)")
Iz2=10*10^-3;
R7=(Vo-Vz2)/Iz2
I4=1*10^-3;
Vb6=7.5;Vz2=Vb6;
disp(" when Vo=11V(moving contact at top of R5)")
Vo=11;
R3=(Vo-Vb6)/I4
R3=3.3*10^3;//use standard value
I4=(Vo-Vb6)/R3
R=Vb6/I4//R=R4+R5
disp(" when Vo=13V(moving contact at bottom of R5)")
Vo=13;Vb6=7.5;
I4=Vo/(R3+R)
R4=Vb6/I4
R5=R-R4