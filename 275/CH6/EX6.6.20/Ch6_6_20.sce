clc
disp("Example 6.20")
printf("\n")
disp("To express CMRR in dB")
printf("given")
disp("Ad=10^4,Ac=0.1")
Ad=10^4
Ac=0.1
//to find CMMR in dB
CMRR=20*log10(Ad/Ac)
printf("CMRR in dB=%d dB",CMRR)
