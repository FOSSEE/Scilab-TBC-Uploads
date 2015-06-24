//Example 3.15: 
clc;
clear;
close;
//given data :
format('v',5)
Ie=9.6;//emitter current in mA
Ib=0.08;//base current in mA
Ic=Ie-Ib;//
format('v',5)
disp(Ic,"(a). collector current,Ic(mA) = ")
alfa=Ic/Ie;
format('v',5)
disp(alfa,"(b). alfa = ")
alfa=0.99;//
Beta=alfa/(1-alfa)
format('v',4)
disp(Beta,"(c). Beta = ")
