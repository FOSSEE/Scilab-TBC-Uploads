//chapter 5
//example 5.5
//page 193
printf("\n")
printf("given")
Rb=270*10^3;Rc=2.2*10^3;Vcc=18;
hFE=100;Vbe=.7;
Ib=(Vcc-Vbe)/(Rb+Rc*(hFE+1))
Ic=hFE*Ib
Vce=Vcc-Rc*(Ic+Ib)