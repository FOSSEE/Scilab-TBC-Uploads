//chapter 5
//example 5.9
//page 200
printf("\n")
printf("given")
Vcc=18.0;
Rc=1.2*10^3;
hfe=50;Vt=4.8;Rt=8.8*10^3;//from example 5.7
Re=1*10^3;Vbe=.7;
Ib=(Vt-Vbe)/(Rt+Re*(1+hfe))
Ic=hfe*Ib
Ie=Ib+Ic
Ve=Ie*Re
Vc=Vcc-(Ic*Rc)
Vce=Vc-Ve