clc
disp("Example 3.50")
printf("\n")
disp("Draw a DC load line for the base bias circuit")
printf("Given\n")
//given
Rc=2.2*10^3
Rb=470*10^3
Vcc=18
Vbe=0.7
hFE=100
//find the Ib
Ib=(Vcc-Vbe)/Rb  // from ciruit
//find the Ic
Icq=hFE*Ib
//find the Vceq
Vceq=Vcc-(Icq*Rc)
//to draw Dc load line 
Ic1=Vcc/Rc
Vce1=Vcc
Vce=[Vcc Vceq 0]
Ic=[0 Icq Ic1]
printf("Q(%f,%f)\n",Vceq,Icq)
plot2d(Vce, Ic)
xlabel("Vce in volt")
ylabel("Ic in Ampere")
xtitle("DC load line for base bias circuit")
