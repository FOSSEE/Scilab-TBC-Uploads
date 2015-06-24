//scilab 5.4.1
//Windows 7 operating system
//chapter 12 Modulation and Demodulation
clc
clear
ma=0.5//ma=modulation factor
Pc=20//Pc=unmodulated carrier power in kilowatts(kW)
Ps=(1/2)*(ma^2)*Pc//Ps=total sideband power
disp("kW",Ps,"The total sideband power is Ps=")
//modulator system efficiency is given as 70 per cent
Pa=Ps/0.7//Pa=audio power necessary toamplitude modulate a given carrier wave
format("v",5)
disp("kW",Pa,"The required audio power is ")
