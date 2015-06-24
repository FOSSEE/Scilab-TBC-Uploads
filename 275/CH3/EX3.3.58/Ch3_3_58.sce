clc
disp("Example 3.58")
printf("\n")
disp("Draw the DC load line & determine Rc for base bias circuit")
printf("Given\n")
//given
Vcc=18
Vbe=0.7
Vceq=9
Icq=2*10^-3
//to find Rc
Rc=(Vcc-Vceq)/Icq //from circuit
//to draw DC load line
Ic1=Vcc/Rc
Vce=[Vcc Vceq 0]
Ic=[0 Icq Ic1]
printf("Q(%f volt,%f ampere)\n",Vceq,Icq)
plot2d(Vce, Ic)
xlabel("Vce in volt")
ylabel("Ic in ampere")
xtitle("DC load line for base bias circuit")
