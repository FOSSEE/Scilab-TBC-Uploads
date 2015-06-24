//scilab 5.4.1
//Windows 7 operating system
//chapter 14 Integrated Circuits and Operational Amplifiers
clc
clear
R1=1*1000//R1=input resistance in ohms in the inverting amplifier circuit
Rf=50*1000//Rf=feedback resistance in ohms
A=-(Rf/R1)//AV=voltage gain of the inverting amplifier circuit
disp(A,"The voltage gain of the given inverting amplifier circuit is =")
//vin=0.5*sin(100*%pi*t)
//vout=A*vin=-50*0.5*sin(100*%pi*t)=-25*sin(100*%pi*t)
disp("If the operation were entirely linear ,the output voltage would have been -25*sin(100*%pi*t)")
disp("But since the voltage supply is +-12V ,the op-amp is saturated when |vout| attains 12V")
//Let at time t=to,vout=-12V 
//-12=-25*sin(100*%pi*to)
to=(1/(100*%pi))*asin(12/25)
format("v",8)
disp("s",to,"to=")
disp("Thus over the entire cycle,")
disp("vout=-25*sin(100*%pi*t) V when 0<=t<=to")
disp("vout=-12V when to<=t<=(0.01-to)")
disp("vout=-25*sin(100*%pi*t) V when (0.01-to)<=t<=(0.01+to)")
disp("vout=+12V when (0.01+to)<=t<=(0.02-to)")
disp("vout=-25*sin(100*%pi*t) V when (0.02-to)<=t<=0.02 seconds")
