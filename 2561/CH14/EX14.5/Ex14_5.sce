//Ex14_5
clc
n=12
disp("n= "+string(n))// Number of bits
VFS=50
disp("VFS= "+string(VFS)+" volts") // Maximum value of analog input voltage
S=VFS/(2^n)
disp("S=VFS/(2^n)= "+string(S)+" volts") // Maximum quantization error
Resolution=(100/2^(n))//Formulae
disp("Resolution=(100/2^(n))= -"+string(Resolution)+" percent, +"+string(Resolution)+" percent")// Since Resolution is (+)as well as (-)

