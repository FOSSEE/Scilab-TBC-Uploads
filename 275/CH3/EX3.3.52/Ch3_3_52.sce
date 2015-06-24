clc
disp("Example 3.52")
printf("\n")
disp(" Find Ic & Vce. Draw a DC load line for the base bias circuit")
printf("Given\n")
//given
betadc=100
Vbe=0.7
Rc=10^3
Rb=10^5
Vb=5
Vc=10
//to find Ib
Ib=(Vb-Vbe)/Rb  //from ciruit
//Ic value
Icq=betadc*Ib
//Vce value
Vceq=Vc-(Icq*Rc)
//to draw DC load line
Ic1=Vc/Rc
Vce1=Vc
Vce=[Vc Vceq 0]
Ic=[0 Icq Ic1]
printf("Q(%f volt,%f ampere)\n",Vceq,Icq)
plot2d(Vce, Ic)
xlabel("Vce in volt")
ylabel("Ic in ampere")
xtitle("DC load line for base bias circuit")
