clc
disp("Example 3.63")
printf("\n")
disp("Draw a DC load line for Collector to base bias")
printf("Given\n")
//given
Vcc=20
Vbe=0.7
hFE=50
Rc=1.8*10^3
Rb=39*10^3
//base current
Ib=(Vcc-Vbe)/(Rb+(1+hFE)*Rc)
//collector current
Icq=hFE*Ib
//to find Vce
Vceq=(Ib*Rb)+Vbe
//to draw DC load line
Ic1=Vcc/Rc
Vce=[Vcc Vceq 0]
Ic=[0 Icq Ic1]
printf("Q(%f,%f)\n",Vceq,Icq)
plot2d(Vce, Ic)
xlabel("Vce")
ylabel("Ic")
xtitle("DC load line for base bias circuit")