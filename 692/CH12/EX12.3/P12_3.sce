//Example 12.3
//Signal-to-quantization Noise ratio
clear;
clc;
b=[7 9 11 13 15];//Given values of b
K=[4 6 8];//Given values of K
for i=1:5
    for j=1:3
        SNR(j,i)=6.02*b(i)+16.81-20*log10(K(j)); 
    end
end
disp(SNR,'SNR,A/D = ');