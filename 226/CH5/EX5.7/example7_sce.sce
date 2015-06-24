//chapter 5
//example 5.7
//page 197
printf("\n")
printf("given")
R1=33*10^3;R2=12*10^3;Rc=1.2*10^3;Re=1*10^3;
Vcc=18;Vbe=.7;
Vb=(Vcc*R2)/(R1+R2)
Ve=Vb-Vbe
Ie=(Vb-Vbe)/Re
Ic=Ie;
Vc=Vcc-(Ic*Rc)
Vce=Vc-Ve