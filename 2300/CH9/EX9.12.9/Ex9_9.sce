//scilab 5.4.1
//Windows 7 operating system
//chapter 9 Basic Voltage and Power Amplifiers
clc
clear
Vorms=2//Vorms=rms output voltage in the midband region of an amplifier
Pa=42//Pa=power gain in dB
Pol=0.4//Pol=power output in W at the lower cut-off frequency 100Hz
Ri=10^3//Ri=input resistance in ohms
VOrms=2/sqrt(2)//VOrms=rms output voltage at 100Hz
format("v",6)
disp("V",VOrms,"1. The rms output voltage at 100Hz,which is the lower cutoff frequency,is =")
Po=2*Pol//Po=output power in the midband region
disp("W",Po,"2. The output power in the midband region is =")
//Let Pi=input power
//10*log10(Po/Pi)=Pa
Pi=Po/(10^(Pa/10))
//Pi=(Vi^2)/Ri where Vi=rms input voltage
Vi=sqrt(Pi*Ri)
format("v",7)
disp("V",Vi,"3. The rms input voltage is =")

