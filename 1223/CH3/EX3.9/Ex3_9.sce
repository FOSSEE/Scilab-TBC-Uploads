clear;
clc;
//Example 3.9
b=100;
Vbe=0.7;
V1=-5;
V2=12;
Rb=10;
Re=5;
Rc=5;
Rl=5;
//Q point values:: using KVL eq around B-E loop
Ib=-(V1+Vbe)/(Rb+(1+b)*Re);
printf('\nbase current=%f mA\n',Ib)
Ic=b*Ib;
printf('\ncollector current=%f mA\n',Ic)
Ie=(1+b)*Ib;
printf('\nemitter current=%f mA\n',Ie)
//at collector node we can write Ic=(V2-Vo)/Rc-Vo/Rl
Vo=(V2/Rc-Ic)*Rc*Rl/(Rc+Rl);
printf('\noutput voltage=%0.3f V\n',Vo)
Vce=Vo-Ie*Re-V1;
printf('\ncollector emitter voltage=%f V\n',Vce)
//load line::
Rth=Rl*Rc/(Rl+Rc);
printf('\nThevenin rquivalent resistance=%f KOhm\n',Rth)
Vth=(Rl/(Rl+Rc))*V2;
printf('\nThevenin equivalent voltage=%f V\n',Vth)
//fig.3.36(c) KVL law
//Vce=6-V1-Ic*Rth-Ie*Re;
Vce=[0,2,4.7,3.5,4,6,8,10]
Ic=(11-Vce)/7.5;
xset('window',1)
plot2d(Vce,Ic,style=3,rect=[0,0,12,2])
title("load line")
xlabel("Vce")
ylabel("Ic")
