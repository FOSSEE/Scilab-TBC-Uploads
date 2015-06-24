//EX5_14 PG-5.30
clc
disp("Refer to the figure-5.27 shown")
Vcc=12;//supply voltage
Beta=100;//voltage gain
Vbe=0.7;//base emitter voltage 
Ic=2e-3;
Ib=Ic/Beta;
R1=50e3;
R2=5e3;
Rc=2e3;
disp("apply KVl to the potential divider side we get Vcc-(I+Ib)*R1-I*R2=0 we get")
I=(Vcc-R1*Ib)/(R1+R2);//since Vcc-(I+Ib)*R1-I*R2=0
Vb=R2*I;
Ie=Ib+Ic;
Re=(Vb-Vbe)/(Ib+Ic);//Vb=Vbe+Re*Ie
printf("\n Re=%.2f ohm \n",Re)
disp("Apply KVL to the collector side Vcc-Ic*Rc-Vce+Ie*Re=0")
Vce=Vcc-Ic*Rc-Ie*Re;//since Vcc-Ic*Rc-Vce+Ie*Re=0
printf("\n Therefore Vce=%.1f V \n",Vce)
Rb=R1*R2/(R1+R2);//R1 and R2 are in parallel
S=(1+Beta)/(1+Beta*(Re/(Re+Rb)));
printf("\n stability factor=%.3f \n",S)
