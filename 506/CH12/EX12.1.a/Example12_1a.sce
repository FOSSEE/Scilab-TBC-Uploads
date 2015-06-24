clear;
clc;

//Caption:Minimum value of coupling capacitance for a given FET
//Given Value
Ry=1;//in K
Rg=1;//in M
Ri=1;//in K
hOE=1/40;//in K^-1

//fL=1/(2*%pi*(ro+ri)*Cb)<=10
//Since ri=1M , ro<Ry=1K , then ro+ri=1M

Cb=1/(2*%pi*1*10);
disp(Cb,'Minimum Value of coupling Capacitance for given FET=');

//end