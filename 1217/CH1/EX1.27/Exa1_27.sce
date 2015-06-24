//Exa 1.27
clc;
clear;
close;
//given data
BETAac=100;//unitless
BETAdc=100;//unitless
VT=25;//in mvolts
VEE=10;//in volts
VCC=10;//in volts
VBE=0.7;//in volts
VD=0.7;//in volts
IE6=2;//in mA
IE1=3.25;//in mA 
Ri2=1.538;//in kohm
RC1=2.5;//in kohm
re8=3.85;//in kohm
RE8=1.2;//in kohm
RC6=1.2;//in kohm
RE=VD/(IE6*10^-3);//in ohm
R=(VEE-2*VD)/IE6;//in kohm
VB5=8.74;//in Volts
VE5=VB5-VBE;
R1=VE5/IE6;//in kohm
re1=VT/IE1;//in ohm
re2=re1;re5=re1;re6=re1;//in ohm
re8=VT/6.5;//in ohm
Ri2=2*BETAac*re6*10^-3;//in kohm
Ad1=(1000*(RC1*Ri2)/((RC1+Ri2)))/re1;
Ri3=BETAac*(re8*10^-3+RE8);//in kohm
Ad2=(1000*(RC6*Ri3)/(RC6+Ri3))/(2*re6);
Ad=Ad1*Ad2;
VRC6=RC6*IE1;//in Volts
Vopp=VRC6;//in Volts
disp(RE,"value of RE in ohm is : ");
disp(R,"value of R in kohm is : ");
disp(VE5,"value of VE5 in Volt is : ");
disp(R1,"value of R1 in kohm is : ");
disp(re1,"AC emitter resistances re1=re2=re5=re6 in ohms are :");
disp(re8,"Abd re8 in ohm is : ");
disp(Ri2,"Input resistance of 2nd stage Ri2 in kohm is");
disp(Ad1,"Voltage gain of 1st stage is");
disp(Ad2,"Voltage gain of 2nd stage is");
Ad3=1;
disp(Ad3,"Voltage gain of 3rd stage is");
disp(Ad,"Overall Voltage gain of the circuit is");
disp(VRC6,"Voltage drop across collector resistor in volt is");
disp(Vopp,"Maximum peak to peak output voltage swing in volt is : ")


