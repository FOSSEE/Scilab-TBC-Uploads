//Example 4.12: 
clc;
clear;
close;
//given data :
Rc=10;// in k-ohm
Rl=10;// in k-ohm
Beta=100;
Ri=2.5;
Iv=2;// input voltage in mV
Rac=Rc*Rl/(Rc+Rl);
Av=round(Beta*Rac/Ri);
Ov=Av*Iv*10^-3;
format('v',4)
disp(Ov,"Output voltage,(V) = ")
