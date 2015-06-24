//EX5_15 PG-5.31
clc
disp("Refer to the figure-5.28 shown")
Vbe=0.7;
Rb=100e3;
Rc=600;
Vcc=12;//supply voltage
T1=25;//temperature in degree celsius
T2=75;//temperature in degree celsius
disp("at T1=25 degree celsius, applying KVL to the base circuit we get")
disp("Vcc-Ib*Rb-Vbe=0")
Beta=100;//voltage gain at T1=25 degree celsius
Ib=(Vcc-Vbe)/Rb;//since Vcc-Ib*Rb-Vbe=0
Ic=Beta*Ib;
printf("\n Therefore Ic=%.1f mA \n",Ic*1e3)
disp("Apply KVL to the collector side Vcc-Ic*Rc-Vce=0")
Vce=Vcc-Ic*Rc;//since Vcc-Ic*Rc-Vce=0
printf("\n Therefore Vce=%.2f V \n",Vce)
Beta=125;//voltage gain at T1=25 degree celsius
Ic1=Beta*Ib;
Vce1=Vcc-Ic1*Rc;//since Vcc-Ic*Rc-Vce=0
printf("\n At 75 degree celsius Vce=%.3f\n",Vce1)
Ic_change=(Ic1-Ic)*100/Ic;//percentage in Ic 
printf("\n change in Ic=%.0f %% (an increase)\n",Ic_change)
Vce_change=(Vce1-Vce)*100/Vce;//percentage in Vce
printf("\n change in Vce=%.2f %% (a decrease) \n",Vce_change)
