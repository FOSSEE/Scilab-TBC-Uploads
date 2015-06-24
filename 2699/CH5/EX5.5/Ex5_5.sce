//EX5_5 PG-5.11
clc
disp("Refer to the figure-5.13 shown")
Vbe=0.7;//base emitter voltage for silicon
Vcc=10;//supply voltage
R1=10e3;
Rc=1e3;
R2=5e3;
Re=500;
Beta=100;//voltage gain
Vb=R2*Vcc/(R1+R2);//base voltage
printf("\n Vb=%.2f V\n",Vb)
Ve=Vb-Vbe;//emitter voltage
printf("\n Ve=%.2f V \n",Ve)
Ie=Ve/Re;
printf("\n Ie=%.2f mA \n",Ie*1e3)
Ib=5.26e-3/(1+Beta);//Ie=0.00526 A=5.26 mA
printf("\n Ib=%.2f microA \n",Ib*1e6)
Ic=Beta*Ib;
printf("\n Ic=%.3f mA \n",Ic*1e3)
disp("We apply KVL to the collector circuit")
disp("Vcc-Ic*Rc-Vce-Ie*Re=0")
Vce=Vcc-Ic*Rc-Ie*Re;//since Vcc-Ic*Rc-Vce-Ie*Re=0
printf("\n Vce=%.2f V \n",Vce)
