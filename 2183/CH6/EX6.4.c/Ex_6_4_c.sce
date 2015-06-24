// Example 6.4.c //optical  loss
clc;
clear;
close;
NA=0.2;//numerical aperture
n=1.4;//refractive index
nc=(NA)^2;//coupling efficiency
pe=0.012;//
pc1=pe*nc;//
Loss=round(-(10*log10(pc1)));//optical loss in dB
disp(Loss,"optical loss in dB is")
//answer is wrong in the text book
