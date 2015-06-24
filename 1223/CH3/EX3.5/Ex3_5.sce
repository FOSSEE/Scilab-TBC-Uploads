clear;
clc;
//Example 3.5
b=100;
Vbe=0.7;//(V)
Vce=0.2;//(V)
Vbb=8;//(v)
Rb=220;//(KOhm)
Ib=(Vbb-Vbe)/Rb
printf('\nbase current=%f mA\n',Ib)
//transistor in active region
Ic=b*Ib;
printf('\ncollector current=%.3f mA\n',Ic)
Vcc=10;//(V)
Rc=4;//(KOhm)
Vce=Vcc-Ic*Rc;
printf('\ncollector emitter voltage=%.2f V\n',Vce)
//saturation
Vce=0.2;//(V)
Ic=(Vcc-Vce)/Rc;
printf('\nsaturation collector current=%.2f mA\n',Ic)
x=Ic/Ib
//which is <b
Ie=Ic+Ib;
printf('\nemitter current=%f mA\n',Ie)
