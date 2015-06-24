clc
disp("Example 3.64")
printf("\n")
disp("Draw a DC load line for Collector to base bias for different hFE")
printf("Given\n")
//given
Vcc=18
Vbe=0.7
hFE1=50
hFE2=200
Rc=2.2*10^3
Rb=270*10^3
//for hFE=50
//base current
Ib1=(Vcc-Vbe)/(Rb+(1+hFE1)*Rc)
//collector current
Icq1=hFE1*Ib1
//to find Vce
Vceq1=(Ib1*Rb)+Vbe
//for hFE=200
//base current
Ib2=(Vcc-Vbe)/(Rb+(1+hFE2)*Rc)
//collector current
Icq2=hFE2*Ib2
//to find Vce
Vceq2=(Ib2*Rb)+Vbe
//to draw DC load line
Ic1=Vcc/Rc
Vce=[Vcc Vceq1 Vceq2 0]
Ic=[0 Icq1 Icq2 Ic1]
printf("Q1(%f volt,%f ampere)\n",Vceq1,Icq1)
printf("Q2(%f volt,%f ampere)\n",Vceq2,Icq2)
plot2d(Vce, Ic)
xlabel("Vce in volt")
ylabel("Ic in ampere")
xtitle("DC load line for base bias circuit")
