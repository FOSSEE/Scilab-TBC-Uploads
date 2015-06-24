//EX5_2 PG-5.6
clc
Vbe=0.7;//base emitter voltage for silicon
Vcc=12;//supply voltage
Rb=150e3;
Rc=2e3
hFE_min=50;//minimum voltage gain
hFE_max=60;//maximum voltage gain
Ib=(Vcc-Vbe)/Rb;//since Vcc=Ib*Rb+Vbe
printf("\n base current is %.8f A \n",Ib)
printf("\n for hFE_min=50")
Ic=hFE_min*Ib
printf("\n Ic=%.3f A \n",Ic*1e3)
Vce=Vcc-Ic*Rc
printf(" Vce=%.4f V \n",Vce)
printf("\n\n for hFE_max=60")
Ic=hFE_max*Ib
printf("\n Ic=%.2f A \n",Ic*1e3)
Vce=Vcc-Ic*Rc
printf(" Vce=%.0f V \n",Vce)


