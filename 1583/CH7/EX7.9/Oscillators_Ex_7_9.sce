clc
//Chapter 7:Conditions for Oscillation
//example 7.9 page no 284
//given
rd=50*10^3
gm=5*10^-3//transconductance
f=16*10^6//frequency of oscillation
Rs=15
XC1=1*10^3//capacitive reactance of first capacitor
XC2=Rs/(gm*XC1)//capacitive reactance of second capacitor
C1=(2*%pi*f*XC1)^-1//value of first capacitor
C2=(2*%pi*f*XC2)^-1//value of second capacitor
mprintf('the value of first capacitor is %3.2e pF\n the value of second capacitor is %3.2e pF\n ',C1,C2)
disp('This value of C1 may be so small that the transistor output capacitance has a effect. therefore it is desirable to incease C1.If C1 is increased by a factor of 10,so that XC1=100,then C2 must also be increased ')
XC_2=Rs/(gm*100)//new value of reactance
XL=100+XC_2//inductive reactance
L=XL/(2*%pi*f)//value of inductor
mprintf('the value of inductor is %3.2e H',L)
