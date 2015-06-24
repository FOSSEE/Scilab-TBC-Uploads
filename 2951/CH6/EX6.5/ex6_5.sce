clc;
clear;
Np1=60; // Noise-Power ratio of first system in dB
Np2=40; // Noise-Power ratio of second system in dB
Np3=30; // Noise-Power ratio of third system in dB
Np4=50; // Noise-Power ratio of fourth system in dB
 
 P1=10^(-6); //power ratio of first system
 P2=10^(-4); //power ratio of second system
 P3=10^(-3); //power ratio of third system
 P4=10^(-5);//power ratio of fourth system
 
 SNR=(P1+P2+P3+P4); // Overall Signal to Noise ratio
  disp("SNR ratio is");
  disp(SNR);
  
  N_final=30; //since SNR is 10^(-3)
 
 disp("overall SNR (in dB)is");
 disp(N_final);
 
 disp("the overall SNR is equal to that of the worst system")
 
