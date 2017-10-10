clc
disp("Example 3.73")
printf("\n")
disp("Find the Ve, Ic,Vce &amp; Vc. Draw a DC load line for Voltage divider circuit")
printf("Given\n")
//given
Vcc=18
Vbe=0.7
hFE=50
R1=33*10^3
R2=12*10^3
Rc=1.2*10^3
Re=10^3
//thevenin voltage
Vt=(Vcc*R2)/(R1+R2)
//thevenin resistance
Rt=(R1*R2)/(R1+R2)
//base current
Ib=(Vt-Vbe)/(Rt+(1+hFE)*Re)
//collector current
Icq=hFE*Ib
//emitter current
Ie=Ib+Icq
//emitter voltage
Ve=Ie*Re
//collector to emitter voltage
Vceq=Vcc-(Icq*Rc)-(Ie*Re);
Vce=[Vcc Vceq 0];
//collector voltage
Vc=Vce+Ve
//to draw DC load line
Ic1=Vcc/(Rc+Re)
Ic=[0 Icq Ic1]
printf("Q(%f volt,%f ampere)\n",Vceq,Icq)
plot2d(Vce, Ic)
xlabel("Vce in volt")
ylabel("Ic in ampere")
xtitle("DC load line for base bias circuit")