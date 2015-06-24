//Exa 1.21
clc;
clear;
close;
//given data
BETAac=100;//unitless
BETAdc=100;//unitless
VBE=0.715;//in volts
VEE=10;//in volts
VT=25;//in mvolts
R=5.6;//in kohm
N=3;// as three transistors here
IR=(VEE-VBE)/(R);//in mA
IC1=IR/(1+(1+N)/BETAac);//in mA
IC2=IR/(1+(1+N)/BETAac);//in mA
IC3=IR/(1+(1+N)/BETAac);//in mA
IRC=3*IC1;//in mA
disp(IRC,"Current through resistor Rc in mA is : ")
disp("Collector Current for each transistor : ")
disp(IC1,"IC1 in mA is : ");
disp(IC2,"IC2 in mA is : ");
disp(IC3,"IC3 in mA is : ");