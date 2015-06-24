// Example 2.5 :Thevenin's and Norton's Equivalent
clc;
close;
format('v',7)
clear;
// given :
vs1=10;//voltage in volts
R1=50;//resistance in ohms
R2=50;//resistance in ohms
R3=25;//resistance in ohms
disp("(a) Applying Thevenins Theorem ")
voc=(R1/(R1+R2))*vs1;//voltage in volts
req=((R1*R2)/(R1+R2))+R3;//resistance in ohms
disp(voc,"Thevenin equivalent open circuit voltage is, (V)=")
disp(t=req,"Thevenin equivalent resistance is,(Ohm)=")
disp("(b) Applying Nortons Theorem ")
Isc=((vs1)/(R1+(R1*R3)/(R1+R3)))*(R1/(R1+R3));//
req=((R1*R2)/(R1+R2))+R3;//resistance in ohms
disp(Isc,"Norton short circuit current is,(A)=")
disp(t=req,"Norton equivalent resistance is,(Ohm)=")
