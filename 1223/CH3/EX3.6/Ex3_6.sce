clear;
clc;
//Example 3.6
Vbe=0.7;
b=75;
//Q point values::
//using KVL eq around the B-E loop
//Vbb=Ib*Re+Vbe+Ie*Re
//assuming transistor is in forward biased mode we can write Ie=(1+b)*Ib
Vbb=6;
Rb=25;//KOhm
Re=0.6;//KOhm
Ib=(Vbb-Vbe)/(Rb+(1+b)*Re);
printf('\nbase current=%f mA\n',Ib)
Ic=b*Ib;
printf('\ncollector current=%0.2f mA\n',Ic)
Ie=(1+b)*Ib;
printf('\nemitter current=%0.2f mA\n',Ie)
Vcc=12;
Rc=0.4;
Vce=Vcc-Ic*Rc-Ie*Re;
printf('\ncollector emitter voltage=%0.2f V\n',Vce)
//load line::
//using KVL law around C-E loop
//Vce=Vcc-(Ic*(Rc+((1+B)/B)*Re));
Ic=[0,12,5.63]
Vce=12-Ic*1;
xset('window',1)
plot2d(Vce,Ic,style=3)
title("load line")
xlabel("Vce")
ylabel("Ic")
