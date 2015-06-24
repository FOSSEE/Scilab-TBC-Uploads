//Example 5_21
clc;
clear;
close;
format('v',5);
//given data : 
Rt=0.15;//mW/degree C(Thermal resistance)
t1=25;//degree C
I0_t1=5;//micro A(at 25 degree C)
delt=10;//degree C
t2=t1+delt;//degree C
Pout=Rt*(t2-t1);//mW
//reverse current doubles at evry 10 degree C 
I0_t2=2*I0_t1;//micro A
V=Pout/(I0_t2/1000);//V
disp(V,"Maximum reverse bias voltage(V)");
