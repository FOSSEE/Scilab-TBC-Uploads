clc
disp("Example 3.61")
printf("\n")
disp("Determine the Ic & Vce levels & draw DC load line for Collector to base bias")
printf("Given\n")
//given
Vcc=15
Vbe=0.7
hFE=50
Rc=1.8*10^3
Rb=39*10^3
//base current
Ib=(Vcc-Vbe)/(Rb+(1+hFE)*Rc)
//collector current
Icq=hFE*Ib
//value of Vce
Vceq=(Ib*Rb)+Vbe
//to draw DC load line
Ic1=Vcc/Rc
Vce=[Vcc Vceq 0]
Ic=[0 Icq Ic1]
printf("Q(%f volt,%f ampere)\n",Vceq,Icq)
plot2d(Vce, Ic)
xlabel("Vce in volt")
ylabel("Ic in ampere")
xtitle("DC load line for base bias circuit")

