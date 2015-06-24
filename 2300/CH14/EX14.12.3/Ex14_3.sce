//scilab 5.4.1
//Windows 7 operating system
//chapter 14 Integrated Circuits and Operational Amplifiers
clc
clear
//First case
v1=40*10^-6//v1=voltage applied to the non-inverting input terminal
v2=-40*10^-6//v2=voltage applied to the inverting input terminal
vo=100*10^-3//vo=output voltage for the above inputs v1 and v2
//Second case
V1=40*10^-6//V1=voltage applied to the non-inverting input terminal
V2=40*10^-6//V2=voltage applied to the inverting input terminal
Vo=0.4*10^-3//Vo=output voltage for the above inputs V1 and V2
disp("In first case:")
vd=v1-v2//vd=difference signal voltage
disp("µV",vd/10^-6,"vd=")
vc=(v1+v2)/2//vc=common mode signal voltage
format("v",5)
disp("µV",vc/10^-6,"vc=")
//Output voltage is vo=(Ad*vd)+(Ac*vc) where Ad and Ac are the voltage gains for the difference signal and the common-mode signal,respectively
Ad=vo/vd//Ad calculated in first case as common mode signal vc=0 
disp(Ad,"Voltage gain for the difference signal is Ad =")
disp("In second case:")
Vd=V1-V2//Vd=difference signal voltage
disp("µV",Vd/10^-6,"Vd=")
Vc=(V1+V2)/2//Vc=common mode signal voltage
format("v",5)
disp("µV",Vc/10^-6,"Vc=")
Ac=Vo/Vc//Ac calculated in second case as difference signal Vc=0 
disp(Ac,"Voltage gain for the common-mode signal is Ac =")
CMRR=abs(Ad/Ac)//CMRR=Common Mode Rejection Ratio=|Ad/Ac|
disp(CMRR,"Common Mode Rejection Ratio is CMRR=")
