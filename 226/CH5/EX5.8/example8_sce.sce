//chapter 5
//example 5.8
//page 199
printf("\n")
printf("given")
Vcc=18;Vbe=.7;hfe=100;
R1=33*10^3;R2=12*10^3;Re=1*10^3;Rc=1.2*10^3;
Vt=(Vcc*R2)/(R1+R2)
Rt=(R1*R2)/(R1+R2)
Ib=(Vt-Vbe)/(Rt+Re*(1+hfe))
Ic=hfe*Ib
Ie=Ib+Ic
Ve=Ie*Re
Vc=Vcc-(Ic*Rc)
Vce=Vc-Ve