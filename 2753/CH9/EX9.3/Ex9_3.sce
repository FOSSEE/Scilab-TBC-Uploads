//Example 9.3: 
clc;
clear;
close;
//given data :
Ih=0;//in A
Vi=100;// in V
Vm=200;//in V
Rl=100;//in ohm
theta1=asind(Vi/Vm);//firing angle in degree
ca=180-theta1;//conducting angle in dehree
format('v',4)
disp(theta1,"(i) firing angle is ,(degree)=")
format('v',5)
disp(ca,"(ii) conducting angle is ,(degree)=")
av=((Vm/(2*%pi))*(1+cosd(theta1)));//in V
ac=av/Rl;//in A
format('v',7)
disp(ac,"(iii) average current is ,(A)=")
//average current is wrong in the textbook
