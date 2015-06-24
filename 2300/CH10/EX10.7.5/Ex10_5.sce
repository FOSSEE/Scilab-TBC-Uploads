//scilab 5.4.1
//windows 7 operating system
//chapter 10:Feedback In Amplifiers
clc
clear
A=50//A=voltage gain of transistor amplifier
Ri=1000//Ri=input resistance of transistor amplifier without feedback
Ro=40*1000//Ro=output resistance of transistor amplifier feedback
//Vf=0.1*Vo (given) where Vf=feedback voltage and Vo=output voltage
B=0.1//B=(Vf/Vo)=feedback fraction
Af=A/(1+(A*B))//Af=gain of the feedback amplifier
format("v",5)
disp("",Af,"Gain of feedback amplifier Af=")
Rif=Ri*(1+(A*B))//Rif=input resistance of the feedback amplifier
Rof=Ro/(1+(A*B))//Rof=output resistance of the feedback amplifier
format("v",5)
disp("kilo ohm",Rif/10^3,"Input resistance with feedback Rif=")//Rif is converted in terms of kilo ohm
disp("kilo ohm",Rof/10^3,"Output resistance with feedback Rof=")//Rof is converted in terms of kilo ohm
