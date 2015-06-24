//Ex14_7
clc
n=12
disp("n= "+string(n))// Number of bits
t=5*10^(-6)
disp("t= "+string(t)+" A")
Vsp=10
disp("Vsp= "+string(Vsp)+" volts") // value of analog input voltage
LSB=Vsp/(2^n)
disp("LSB=Vsp/(2^n)= "+string(LSB)+" volts") // Lowest significant bit of 12-bit ADC
disp("LSB/2= -"+string(LSB/2)+" V, -"+string(LSB/2)+" V") 
SR=(LSB/2)/t
disp("SR=(LSB/2)/t= "+string(SR)+" V/s")
fmax=SR/(2*%pi*Vsp)
disp("f = SR/(2*%pi*Vsp)="+string(fmax)+" Hz")// Highest frequency allowed at the input

