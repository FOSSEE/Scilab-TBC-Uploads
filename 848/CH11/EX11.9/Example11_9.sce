//clear//
//Caption: Noise penalty factor
//Example11.9
//page 414
clear;
clc;
close;
G =[10^(30/10),10^(20/10)]; //Amplifier Gain
for i = 1:length(G)
  Fpath(i) = (1/G(i))*((G(i)-1)/log(G(i)))^2;
  disp(10*log10(Fpath(i)),'Noise penalty factor in dB Fpath =');
  disp(G(i),'for a gain of G =');
end
//Result
// Noise penalty factor in dB Fpath = 13.204571  
// for a gain of G = 1000.  
// Noise penalty factor in dB Fpath = 6.6477902  
// for a gain of G =  100.  
