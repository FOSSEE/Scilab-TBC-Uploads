clc
disp("Example 3.72")
printf("\n")
disp("Draw a DC load line for Voltage divider circuit")
printf("Given\n")
//given
Vcc=15
Rc=2.7*10^3
Re=2.2*10^3
R1=22*10^3
R2=12*10^3
Vbe=0.7
//base voltage
Vb=(Vcc*R2)/(R1+R2)
//emitter voltage
Ve=Vb-Vbe
//emitter current
Ie=Ve/Re
//collector current
Icq=Ie
//collector to emitter voltage
Vceq=Vcc-(Icq*(Rc+Re))
//collector voltage
Vc=Vce+Ve
//to draw DC load line
Ic1=Vcc/(Rc+Re)
Vce=[Vcc Vceq 0]
Ic=[0 Icq Ic1]
printf("Q(%f volt,%f ampere)\n",Vceq,Icq)
plot2d(Vce, Ic)
xlabel("Vce in volt")
ylabel("Ic in ampere")
xtitle("DC load line for base bias circuit")
