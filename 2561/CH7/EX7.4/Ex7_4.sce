//Ex7_4
clc
GBW=10^(6)
disp("GBW= "+string(GBW)+" Hz")// Gain-Bandwidth product
AMf=100
disp("AMf="+string(AMf)) // Midband gain with feedback
fHF=GBW/AMf
disp("fHF=GBW/AMf= "+string(fHF)+" Hz")//Signal bandwidth
f_10percent=(10*fHF)/100
disp("f_10per cent=(10*fHF)/100= "+string(f_10percent)+" Hz")//Frequency below which AMf will not deviate by more than 10 percent
