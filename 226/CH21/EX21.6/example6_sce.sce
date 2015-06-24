//chapter 21
//example 21.6
//page 958
printf("\n")
printf("given")
Vee=6;Vbe=.7;Ib=200*10^-6;Vb=.7;Vcc=6;
disp("when cell is dark Rc=100Kohm")
Rc=100*10^3;
Vrc=Vee+Vbe
Irc=Vrc/Rc
Ir1=Irc+Ib
Vr1=Vcc-Vb
R1=Vr1/Ir1
R1=18*10^3;//use standard value
disp(" when Q1 is off")
Vr1=6;Vrc=6;
Ir1=Vr1/R1
Rc=Vrc/Ir1