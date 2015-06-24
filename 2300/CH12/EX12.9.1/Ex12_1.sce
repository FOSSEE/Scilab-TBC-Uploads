//scilab 5.4.1
//Windows 7 operating system
//chapter 12 Modulation and Demodulation
clc
clear
Vmax=8//Vmax=maximum peak to peak value of an AM voltage
Vmin=2//Vmin=minimum peak to peak value of an AM voltage
ma=(Vmax-Vmin)/(Vmax+Vmin)//ma=percentage modulation 
disp("%",(ma*100),"Percentage modulation ma=")
//ma=(Vmax-Vmin)/(2*VC) where VC=amplitude of the unmodulated carrier
VC=(Vmax-Vmin)/(2*ma)
disp("V",VC,"Amplitude of the unmodulated carrier is VC=")
disp("In the textbook answer given is incorrect as they have further divided by 2 which is not the part of given formula.")
