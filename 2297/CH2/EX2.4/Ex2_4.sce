// Example 2.4 :current
clc;
close;
clear;
format('v',7)
// given :
vs1=72;//voltage in volts
vs2=40;//voltage in volts
R1=36;//resistance in ohms
R2=10;//resistance in ohms
ig=2;//current in amperes
Rx=8;//resistance in ohms
disp("Applying Thevenins Theorem ")
//(vs1-voc)/R1+(v40-voc)/R2 +2 =0 node equation at 1
voc=(R2*vs1+R1*vs2+R1*R2*ig)/(R1+R2);//voltage in volts
req=(R1*R2)/(R1+R2);//resistance in ohms
ix1=(voc)/(req+Rx);//resistance in ohms
disp(ix1,"current through Rx is, (A)")
disp("Applying Nortons Theorem ")
Is=(vs1/R1)+(vs2/R2)+ig;//current in amperes
ix2=(req*(Is/(Rx+req)));//current in amperes
disp(ix2,"current through Rx is, (A) =")

