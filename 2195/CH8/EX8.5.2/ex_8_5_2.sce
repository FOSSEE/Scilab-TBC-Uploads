//Example 8.5.2:self capacitance and inductance
clc;
clear;
close;
format('v',6)
f1=2;//in MHz
c1=460;//in pF
f2=4;//in MHz
c2=100;//in pF
cd1=((c1-(4*c2))/3);//self capacitance in pF
x=((1/(2*%pi*f1*10^6)))^2;//
l=x/((c1+cd1)*10^-12);//
disp(cd1,"self capacitance in pF")
disp(l*10^6,"inductance in micro Henry")
