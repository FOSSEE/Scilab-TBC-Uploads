//EX5_8 PG-5.16
clc
disp("refer to the figure-5.17 shown")
Vbe=0.7;//base emitter voltage for silicon
Vcc=10;//supply voltage
Beta=100;//voltage gain
Vce=5;//colector to emitter voltage 
Ic=5e-3;//collector current
disp("We apply KVL to the collector circuit ie Vcc-Vce-Ic*Rc=0")
Rc=(Vcc-Vce)/Ic;//since Vcc-Vce-Ic*Rc=0
printf("\n Rc=%.0f kohm \n",Rc*1e-3)
Ib=Ic/Beta;//base current
printf("\n Ib=%.2f microA \n",Ib*1e6)
disp("We apply KVL to the base circuit ie Vcc-Vbe-Ib*Rb=0")
Rb=(Vcc-Vbe)/Ib;//since Vcc-Vbe-Ib*Rb=0
printf("\n Rb=%.0f kohm \n",Rb*1e-3)
disp("the standard value of Rb=200k ohm")
