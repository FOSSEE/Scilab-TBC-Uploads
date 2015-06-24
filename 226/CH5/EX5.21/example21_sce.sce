//chapter 5
//example 5.21
//page 227
printf("\n")
printf("given")
Vcc=15;Rc=3.3*10^3;Vbe=.7;Rb=56*10^3;
Ic=Vcc/Rc
Ib=(Vcc-Vbe)/Rb
hFE=Ic/Ib;
printf(" minimum hFE is %3.2f\n",hFE)