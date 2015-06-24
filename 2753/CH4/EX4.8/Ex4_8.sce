//Example 4.8: 
clc;
clear;
close;
//given data :
R2=4;// in k-ohm
R1=40;// in k-ohm
Vcc=22;// in V
Rc=10;// in k-ohm
Re=1.5;// in k-ohm
Vbe=0.5;// in V
Voc=R2*10^3*Vcc/((R1+R2)*10^3);
Ic=(Voc-Vbe)/(Re*10^3);
Vce=Vcc-(Rc+Re)*Ic*10^3;
format('v',5)
disp(Vce,"Collector to emitter voltage,Vce(V) = ")
