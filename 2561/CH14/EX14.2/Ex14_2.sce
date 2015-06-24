//Ex14_2 
clc
n=3
disp("n= "+string(n))// Number of bits 
L=2^(n)
disp("L=2^(n)= "+string(L))// Number of quantization levels
VFS=1024*10^(-3)
disp("VFS= "+string(VFS)+" volts") // Maximum value of analog input voltage

disp("part(i)")// Part(i)
LSB=VFS/(2^n)
disp("LSB=VFS/(2^n)= "+string(LSB)+" volts") // Lowest significant bit of 3-bit ADC

disp("part(ii)")// Part(ii)
disp("vh= 64 to 192 mV with offset") // Analog voltage corresponding to binary word 001

disp("part(iii)")// Part(iii)
I.E=(LSB)/2
disp("Inherent error,I.E= (LSB)/2= -"+string(I.E)+" V,+"+string(I.E)+" V")// Inherent error in each binary word

disp("part(iv)")// Part(iv)
Resolution=(1*10^(-3))
disp("Resolution= "+string(Resolution)+" V")//Resolution
VFS=1
disp("VFS= "+string(VFS)+" V") // Maximum value of analog input voltage2
k=VFS/(Resolution)
disp("k=VFS/(Resolution)= "+string(k)) // 'k' taken only for calculation purpose
disp("number of bits=10")// since k =[VFS/(Resolution)]is approximately equal to 2^10,
disp("so 10-bit ADC required")
