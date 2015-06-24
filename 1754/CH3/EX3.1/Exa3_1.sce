//Exa 3.2
clc;
clear;
close;
//Given data
ib=10;//in uA
ic=1;//in mA
ic=ic*10^3;//in uA
vi=0.02;//in Volt
RC=5;//in kohm
RL=10;//in kohm
//Part (i)
Ai=-ic/ib;//unitless
Beta=Ai;//unitless
disp(Ai,"Current gain : ");
//Part (ii)
Rie=vi/(ib*10^-6);//in Ohm
disp(Rie*10^-3,"Input impedence in kohm :");
//Part (iii)
Rac=RC*RL/(RC+RL);//in kohm
disp(Rac,"AC load in kohm : ");
//Part (iv)
Av=-Rac*10^3*Beta/Rie;//unitless
disp(Av,"Voltage gain : ");
//Part (v)
PowerGain=Av*Ai;//unitless
disp(PowerGain,"Power Gain is : ");
//Note : Ans of Av and Power gain is wrong in the book.