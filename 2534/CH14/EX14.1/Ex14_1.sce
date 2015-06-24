//Ex14_1
clc
Ad = 100//differential gain
Ac = 0.01//common mode gain
CMRR = Ad/Ac//Common Mode Rejection Ratio
CMRR_dB = 20*log10(CMRR)//Common Mode Rejection Ratio in decibles
disp("Ad = "+string(Ad))
disp("Ac = "+string(Ac))
disp("CMRR = Ad/Ac = "+string(CMRR))
disp("CMRR = "+string(CMRR_dB)+"dB")
