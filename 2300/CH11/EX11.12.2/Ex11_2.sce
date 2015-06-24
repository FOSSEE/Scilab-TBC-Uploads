//scilab 5.4.1
//Windows 7 operating system
//chapter 11 Sinusoidal oscillator and multivibrators
clc
clear
//L1 and L2=inductances in henry in a Hartley oscillator
//Suppose L1=a
//L2=b
f=60*10^3//f=frequency in Hz
C=400*10^(-12)//C=capacitance in Farad
//Also tuning capacitance varies from 100 pF to 400 pF
//f=1/(2*%pi*sqrt((L1+L2)*C)) where f=frequency of a Hartley oscillator which varies from 60 kHz to 120 kHz
//d=L1+L2=a+b
//d=1/(((2*%pi*f)^2)*C)
d=1/(((2*%pi*f)^2)*C)//.......(1)
format("v",10)
//e=L2/L1=hfe/dhe
hfe=90//hfe=current gain
dhe=0.2//dhe=delta he
e=hfe/dhe//..........(2)
//From equation (1) and (2)
//L*x=y
x=[1 1 ; e -1]
y=[d ; 0]
L=inv(x)*y
format("v",6)
disp("micro Henry",(L(1))/10^-6,"Inductance L1 is =")//converting L(1) in terms of micro Henry
disp("mH",(L(2))/10^-3,"Inductance L2 is =")//converting L(2) in terms of mH

