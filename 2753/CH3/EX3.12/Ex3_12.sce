//Example 3.12: 
clc;
clear;
close;
//given data :
Ie=8.4; // in mA
cr=0.8/100;// carriers recombine in base in %
Ib=cr*Ie;
format('v',6)
disp(Ib,"(a). The base current,Ib(mA) = ")
Ic=Ie-Ib;
format('v',5)
disp(Ic,"(b). The collector current,Ic(mA) = ")
alfa=Ic/Ie;
format('v',6)
disp(alfa,"(c). the value of alfa = ")
