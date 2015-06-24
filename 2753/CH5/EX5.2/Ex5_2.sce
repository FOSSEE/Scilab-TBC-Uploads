//Example 5.2: 
clc;
clear;
close;
//given data :
Pac=2;//in W
Vcc=12;//in V
Ic=(Pac*sqrt(2)*sqrt(2))/Vcc;//in A
format('v',5)
disp(Ic,"maximum collector current is ,(A)=")
