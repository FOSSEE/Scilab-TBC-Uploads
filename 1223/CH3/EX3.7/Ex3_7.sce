clear;
clc;
//Example 3.7
Vbe=0.65;
Vcc=5;
Rc=0.5;//KOhm
b=100;
V1=-5;
Re=1;//KOhm
// Q-point values :: writing KVL eq around B-E loop
Ie=(-V1-Vbe)/Re;
printf('\nemitter current=%.2f mA\n',Ie)
Ib=(Ie/(1+b));
printf('\nbase current=%f mA\n',Ib)
Ic=(b/(1+b))*Ie;
printf('\ncollector current=%0.2f mA\n',Ic)
Vce=Vcc-Ic*Rc-Ie*Re-V1;
printf('\ncollector emitter voltage=%f V\n',Vce)
//load line::
//Vce=Vcc-V1-(Ic*(Rc+((1+B)/B)*Re));
Vce=[0,2,,3.5,4,6,8,10]
Ic=(10-Vce)/1.51;
xset('window',1)
plot2d(Vce,Ic,style=3,rect=[0,0,10,8])
title("load line")
xlabel("Vce")
ylabel("Ic")
