//EX5_4 PG-5.9
clc
Vbe=0.7;//base emitter voltage for silicon
Vcc=12;//supply voltage
Rb=150e3;
Rc=2e3
hFE_min=50;
hFE_max=60;
printf("i) for hFE_min=50")
Beta=hFE_min;//minimum voltage gain
Ib=(Vcc-Vbe)/((1+Beta)*Rc+Rb);//since Vcc=Ib*Rb+Vbe
printf("\n    base current is %.2f microA \n",Ib*1e6)
Ic=Beta*Ib
printf("    Ic=%.3f mA \n",Ic*1e3)
Vce=Vcc-(Ib+Ic)*Rc
printf("    Vce=%.3f V \n",Vce)
printf("\n    for hFE_max=60")
Beta=hFE_max;//maximum voltage gain
Ib=(Vcc-Vbe)/((1+Beta)*Rc+Rb);//since Vcc=Ib*Rb+Vbe
printf("\n    base current is %.2f microA \n",Ib*1e6)
Ic=Beta*Ib
printf("    Ic=%.3f mA \n",Ic*1e3)
Vce=Vcc-(Ib+Ic)*Rc
printf("    Vce=%.3f V \n",Vce)

