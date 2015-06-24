//EX5_10 PG-5.18
clc
disp("Refer to the figure-5.20 shown")
Vbe=0.7;//base emitter voltage for silicon
Vcc=12;//supply voltage
Beta=100;//voltage gain
Vce=5;//colector to emitter voltage 
Ve=3;//assumption
Ic=3e-3;//collector current
Ib=Ic/Beta;//base current
printf("\n Ib=%.0f microA \n",Ib*1e6)
Ie=Ic+Ib;//emitter current
printf("\n Ie=%.2f mA \n",Ie*1e3)
Re=Ve/Ie;
printf("\n Re=%.0f ohm \n",Re)
printf(" the standard value of Re=910 ohm")
Re=910;//standard value
Ve=Ie*Re;
printf("\n\n Ve=%.3f V \n",Ve)
Rc=(Vcc-Ve-Vce)/Ic
printf("\n Rc=%.0f ohm \n",Rc)
printf(" the lower side standard value is selected to reduce Ic*Rc and increase Vce ")
Vb=Ve+Vbe
printf("\n\n Therefore Vb=%.5f V \n",Vb)
I=10*Ib
printf("\n I=%.1f mA \n",I*1e3)
R2=Vb/I;
printf("\n R2=%.0f ohm \n",R2)
printf(" the standard value of R2=11 kohm\n")
disp("the lower side standard is selected to satisfy I>=10*Ib")
R2=11e3;
I=Vb/R2;
printf("\n I=%.4f mA \n",I*1e3)
R1=(Vcc-Vb)/(I+Ib)
printf("\n R1=%.3f kohm \n",R1*1e-3)
printf(" the standard value of R1=22kohm\n")
disp("The lowest standard value is selected to satisfy I>=10*Ib")
