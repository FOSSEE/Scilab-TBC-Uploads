//Ex14_1 Refer fig 14.1(b) and (c)
clc
n=3
disp("n= "+string(n))// Number of bits 
L=2^(n)
disp("L=2^(n)= "+string(L))// Number of quantization levels
VFS=10
disp("VFS= "+string(VFS)+" volts") // Maximum value of analog input voltage
Q.E=VFS/L
disp("Q.E=VFS/L= "+string(Q.E))// Quantization error
disp("Q.E= +0.625,-0.625")// To make Quantization error symmetrical ittaken as (-Q.E/2) negative and positive value(+Q.E/2)
Resolution=(100/2^(n))//Formulae
disp("Resolution=(100/2^(n))= "+string(Resolution)+" percent")//Resolution
disp("Resolution= "+string(+Resolution)+" percent,"+string(-Resolution)+" percent")// Since Resolution is (+)as well as (-)
