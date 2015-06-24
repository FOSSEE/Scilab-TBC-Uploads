//scilab 5.4.1
//Windows 7 operating system
//chapter 19 VLSI Technology and Circuits
clc
clear
f=2*10^9//f=clock frequency in Hz
VDD=3//VDD=drain supply voltage 
Cl=1*10^-12//C1=load capacitance in Farad
P=50*10^-3//P=maximum power dissipation capability in W/stage
N=P/(f*Cl*VDD^2)//N=maximum permissible number of fan outs
format("v",5)
disp(N,"N=")
disp(floor(N),"The maximum permissible number of fan-outs is(integer just below actual value)=")
