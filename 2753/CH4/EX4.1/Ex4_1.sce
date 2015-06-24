//Example 4.1: 
clc;
clear;
close;
//given data :
format('v',6)
Rc=4.7;// in ohm
Vcc=24;// in V
Ic=1.5;//in mA
//this is given as 15 mA in textbook which is wrong
Vce=Vcc-(Ic*Rc*10^-3*10^3);//in V
disp(Vce,"(i) Collector to emitter voltage,Vce(V) =  ")
Ic1=0;//in A
Vce1=Vcc-Ic1*Rc;//in V
format('v',4)
disp(Vce1,"(ii) Collector to emitter voltage,Vce(V) =  ")

