clear;
clc;
//Example 3.10
Rb=0.24;
Vcc=12;
Vbe=0.7;
Vce=0.1;
b=75;
Rc=5;//Ohm
//for Vt=0 ,transistor is cut off,Ib=Ic=0,Vo=Vcc=12 V,power dissipation is zero
Vt=12;//(V)
Ib=(Vt-Vbe)/Rb;
printf('\nbase current=%0.3f mA\n',Ib)
Ic=(Vcc-Vce)/Rc;
printf('\ncollector current=%0.2f A\n',Ic)
Ib=0.0471;//A
x=Ic/Ib
//since Ic/Ib<b transistor is in saturation
//Vo==Vcc;
Vo=0.1;
printf('\noutput voltage=%0.2f V\n',Vo)
P=Ic*Vce+Ib*Vbe;
printf('\npower dissipation=%0.3f W\n',P)
