//Example 5_28
clc;
clear;
close;
format('v',5);
//given data : 
Pmax=2.5;//W
Vf=900;//mV
If_max=Pmax/(Vf/1000);//A
disp(If_max,"(a) Maximum allowable forward current(A) : ");
Rf=Pmax/If_max^2;//ohm
format('v',7);
disp(Rf,"(b) Forward Diode Resistance(ohm)")
//Answer in the textbok is wrong.
