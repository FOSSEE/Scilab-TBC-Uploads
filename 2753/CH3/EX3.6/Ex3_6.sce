//Example 3.6: 
clc;
clear;
close;
//given data :
Ie=5;// in mA
alfa=0.99;
I_co=0.005;// in mA
Ic=((alfa*Ie)+I_co);
Ib=(Ie-Ic);
Beta=alfa/(1-alfa);
I_CEO=I_co/(1-alfa);
format('v',6)
disp(Ic,"Ic,(mA) = ")
format('v',4)
disp(Ib*10^3,"Ib,(micro-A) = ")
disp(Beta,"Beta = ")
format('v',6)
disp(I_CEO*10^3,"I_CEO(micro-A) = ")
