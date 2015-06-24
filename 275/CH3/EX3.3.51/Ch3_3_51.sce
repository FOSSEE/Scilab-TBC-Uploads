clc
disp("Example 3.51")
printf("\n")
disp("Draw a DC load line for the base bias circuit for different hFE")
printf("Given\n")
//given
Rc=2.2*10^3
Rb=470*10^3
Vcc=18
Vbe=0.7
hFE1=50
hFE2=200
//find the Ib
Ib=(Vcc-Vbe)/Rb  // from ciruit
//find the Ic for hFE1
Icq1=hFE1*Ib
//find the Vceq1
Vceq1=Vcc-(Icq1*Rc)
//find the Ic for hFE2
Icq2=hFE2*Ib
//find the Vceq2
Vceq2=Vcc-(Icq2*Rc)
//to draw Dc load line 
Ic1=Vcc/Rc
Vce1=Vcc
Vce=[Vcc Vceq1 Vceq2 0]
Ic=[0 Icq1 Icq2 Ic1]
printf("Q1(%f volt,%f ampere)\n",Vceq1,Icq1)
printf("Q2(%f volt,%f ampere)\n",Vceq2,Icq2)
plot2d(Vce, Ic)
xlabel("Vce in volt")
ylabel("Ic in ampere")
xtitle("DC load line for base bias circuit")
