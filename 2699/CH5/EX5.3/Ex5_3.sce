//EX5_3 PG5.8 
clc
disp("Refer to the figure-5.8 shown")
Vbe=0.7;//base emitter voltage for silicon
Vcc=12;//supply voltage
Rb=100e3;
Rc=10e3;
Beta=100;//voltage gain
Ib=(Vcc-Vbe)/((1+Beta)*Rc+Rb);//since Vcc=Ib*Rb+Vbe
printf("\n base current is %.2f microA \n",Ib*1e6)
Ic=Beta*Ib
printf("\n Ic=%.3f mA \n",Ic*1e3)
Vce=Vcc-(Ib+Ic)*Rc
printf("\n Vce=%.4f V \n",Vce)
