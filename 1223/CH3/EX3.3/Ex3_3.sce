clear;
clc;
//Example 3.3
Vbb=4;//(V)
Rb=220//(KOhm);
Rc=2;//(KOhm)
Vcc=10;//(V)
Vbe=0.7;//(V)
b=200;
//from fig.3.19(b)
Ib=(Vbb-Vbe)/Rb;
printf('\nbase current=%.3f mA\n',Ib)
Ic=b*Ib;
printf('\ncollector current=%.2f mA\n',Ic)
Ie=(1+b)*Ib;
printf('\nemitter current=%.2f mA\n',Ie)
Vce=Vcc-Ic*Rc;
printf('\ncollector emitter voltage=%.1f V\n',Vce)
