clc
disp("Example 3.74")
printf("\n")
disp("Find the Ve, Ic,Vce & Vc. Draw a DC load line for Voltage divider circuit")
printf("Given\n")
//given
Vcc=15
Vbe=0.7
hFE=50
R1=6.8*10^3
R2=3.3*10^3
Rc=0.9*10^3
Re=0.9*10^3
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
Vceq=Vcc-(Icq*Rc)-(Ie*Re)
//collector voltage
Vc=Vce+Ve
//to draw DC load line
Ic1=Vcc/(Rc+Re)
Vce=[Vcc Vceq 0]
Ic=[0 Icq Ic1]
printf("Q(%f,%f)\n",Vceq,Icq)
plot2d(Vce, Ic)
xlabel("Vce")
ylabel("Ic")
xtitle("DC load line for base bias circuit")