// Exa 8.5
clc;
clear;
close;
// Given data
VTO= 0.43;// in V
VDD= 2.5;// in V
g=0.4; // value of gamma
W1= 0.375;
L1=0.25;
W2= 0.75;
L2=0.25;
//VDD-VOUT-VT= VDD-VOUT-(VTO+g*(sqrt(0.6+VOUT)-sqrt(0.6)))=0
//VOUT^2+VOUT*(2*A-g^2)+(A-0.6*g^2)=0, where
A=VTO-VDD-g*sqrt(0.6);// assumed
B= (2*A-g^2);// assumed
C=(A^2-0.6*g^2);//assumed
VOUT= [1 B C];
VOUT= roots(VOUT);// in V
VOUT= VOUT(2);// in V
VOH= VOUT;// in V
disp(VOH,"The value of VOH in volts is : ")
Vout=(W1+3*L2)-(VDD-VTO)*(W2*L1/(W1*L2)-1)+ (VDD)/(VDD-VTO)
VOL= Vout;// in V
disp(VOL,"The value of VOL in volts is : ")
Vth= (VDD+VTO-L1)/(VDD*VTO)*(1-W1*L2/(W2*L1))+(L1*L2/VDD)
disp(Vth,"The value of Vth for circuit A in volts is : ")
W4= 0.365;
L4=0.25;
W3= 0.75;
L3=0.15;
Vth=(L3*L4/VDD)+(VDD/(W3*L4*VDD))-(VDD)/(1-W4*L3/(W3*L4))-2*W4
disp(Vth,"The value of Vth for circuit B in volts is : ")
