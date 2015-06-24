//EX5_13 PG-5.29
clc
disp("Refer to the figure-5.26 shown")
Vcc=15;//supply voltage
Beta=100;//voltage gain
Vbe=0.6;//base emitter voltage 
Ic=2e-3
Vce=3;
R4=600;
R2=10e3;
Ib=Ic/Beta;
Ie=Ic+Ib;//collector current
printf("\n Apply KVL to the collector side Vcc=Ic*R3+Vce+Ie*R4")
R3=(Vcc-Vce-Ie*R4)/Ic;//since Vcc=Ic*R3+Vce+Ie*R4
printf("\n Therefore R3=%.3f kohm \n",R3*1e-3)
printf("\n Apply KVL to the base side I*R2=Vbe+Ie*R4")
I=(Vbe+Ie*R4)/R2;//since I*R2=Vbe+Ie*R4
printf("\n Therefore I=%.4f mA \n",I*1e3)
printf("\n Apply KVl to the potential divider side we get Vcc=(I+Ib)*R1+I*R2")
R1=(Vcc-I*R2)/(I+Ib);//since  Vcc=(I+Ib)*R1+I*R2
printf("\n therefore R1=%.3f kohm \n",R1*1e-3)
