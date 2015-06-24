clc
disp("Example 3.54")
printf("\n")
disp(" Draw a DC load line for the base bias circuit neglecting Vbe")
printf("Given\n")
//given
betadc=100
Rc=5*10^3
Rb=1.5*10^6
Vc=30
//to find Ib
Ib=Vc/Rb  //from ciruit
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
