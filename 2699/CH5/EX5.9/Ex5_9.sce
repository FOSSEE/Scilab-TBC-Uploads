//EX5_9 PG-5.17
clc
disp("refer to the figure-5.19 shown")
Vbe=0.7;//base emitter voltage for silicon
Vcc=16;//supply voltage
Beta=100;//voltage gain
Vce=5;//colector to emitter voltage 
Ic=5e-3;//collector current
Ib=Ic/Beta;//base current
printf("\n Ib=%.0f microA \n",Ib*1e6)
Rc=(Vcc-Vce)/(Ic+Ib);//since Vcc-Vce-Ic*Rc=0
printf("\n Rc=%.3f kohm \n",Rc*1e-3)
disp("Rc=2 kohm standard value")
disp("We apply KVL to the input circuit ie Vce-Vbe-Ib*Rb=0")
Rb=(Vce-Vbe)/Ib;//since Vce-Vbe-Ib*Rb=0
printf("\n Rb=%.0f kohm \n",Rb*1e-3)
disp("the standard value of Rb=91 kohm")
