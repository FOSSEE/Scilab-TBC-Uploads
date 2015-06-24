//Exa 1.20
clc;
clear;
close;
//given data
IR=2;//in mA
I2=10;//in uA
I3=20;//in uA
VBE1=0.7;//in volts
VT=25;//in mVolts
VCC=10;//in volts
VEE=-10;//in volts
R=(VCC-VBE1-VEE)/IR;//in kohm
disp("On examining circuit it can be seen that transistor Q1 and Q2 are connected in parallel, to form two widlar current source, one consisting of transistor Q1 and Q2 and the other consisting of Q1 and Q3.");
RE2=(VT/(I2*10^-3))*log(IR/(I2*10^-3));//in kohm
RE3=(VT/(I3*10^-3))*log(IR/(I3*10^-3));//in kohm
VBE2=VBE1-RE2*I2*10^-6;//in volts
VBE3=VBE1-RE3*I3*10^-6;//in volts
RE2=RE2/1000;//in kohm
RE3=RE3/1000;//in kohm
disp(R,"Value of R in kohm is : ")
disp(RE2,"Value of RE2 in kohm is : ")
disp(RE3,"Value of RE3 in kohm is : ")
disp(VBE2,"Value of VBE2 in Volt is : ")
disp(VBE3,"Value of VBE3 in Volt is : ")