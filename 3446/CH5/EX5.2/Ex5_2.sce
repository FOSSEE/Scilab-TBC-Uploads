// Exa 5.2
// To calculate reuse factor for AMP and GSM systems.

clc;
clear all;

S_IAMP=18;// S/I ratio in dB
S_IGSM=12;// S/I ratio in dB
PPL=4; // propogation path loss coefficient

//solution
// Using Equation 5.16 on page no 132, we get
N_AMP=(1/3)*((6*10^(0.1*S_IAMP))^(2/PPL));//reuse factor for AMPS
  
N_GSM=(1/3)*((6*10^(0.1*S_IGSM))^(2/PPL));//reuse factor for GSM

printf('Reuse Factor for AMP system is N = %f = approx %d \n',N_AMP,N_AMP+1);
printf(' Reuse Factor for GSM system is N = %f = approx %d \n',N_GSM,N_GSM+1);
