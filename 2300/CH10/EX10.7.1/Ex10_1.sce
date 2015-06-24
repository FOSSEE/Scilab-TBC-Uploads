//scilab 5.4.1
//windows 7 operating system
//chapter 10:Feedback In Amplifiers
clc
clear
A=(-100)//A=voltage gain of an amplifier
B=(-0.04)//B=feedback ratio
Af=A/(1+(A*B))//Af=voltage gain with feedback
disp("",Af,"1.Voltage gain with feedback Af=")
F=20*log10(abs(Af/A))//F=amount of feedback
format("v",6)
disp("dB",F,"2.Amount of feedback F=")
Vi=40*(10^-3)//Vi=input voltage
Vo=Af*Vi//Vo=output voltage
disp("V",Vo,"3.Output voltage Vo=")
f=(-A*B)//f=feedback factor
disp("",f,"4.Feedback factor f=")
Vf=B*Vo//Vf=feedback voltage
disp("mV",Vf/10^-3,"5.Feedback voltage is Vf=")//Vf is converted in terms of mV

