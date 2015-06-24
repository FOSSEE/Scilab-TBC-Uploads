//Example 9.2: 
clc;
clear;
close;
//given data :
Va=300;// in V
Vm=300*sqrt(2);//in V
Rl=50;//in ohm
theta1=90;//firing angle in degree
idc=((Vm/(2*%pi*Rl))*(1+cosd(theta1)));//in A
format('v',6)
disp((idc),"(i) the dc load current is ,(A)=")
irms=Va/(2*Rl);//in A
format('v',4)
disp(round(irms),"(ii) the rms load current is ,(A)=")
P=irms^2*Rl;//in W
format('v',5)
disp(round(P),"(iii) the power dissipated by the load is ,(W)=")
