//Example 12.15
//Note: MAXIMA SCILAB TOOLBOX REQUIRED FOR THIS PROGRAM
//Program to:
//(a)Derive an expression for the improvement in post detection SNR
//(b)Determine the improvement in post detection SNR and Bandwidth

clear;
clc ;
close ;

//(a)Derive an expression for the improvement in post detection SNR
//Symbolic Representation
syms Pa R Po Ba No Df
//D-IM OUTPUT SNR
SNR_DIM=(R*Po)^2*Pa/(2*Ba*No);
//FM OUTPUT SNR
SNR_FM=3*Df^2*(R*Po)^2*Pa/(4*Ba*No);
//SNR IMPROVEMENT
SNR_imp=SNR_FM/SNR_DIM;
//SNR IMPROVEMENT IN dB
SNR_imp_dB=10*log10(SNR_imp);
disp(SNR_imp,"SNR IMPROVEMENT = ");
disp(SNR_imp_dB,"SNR IMPROVEMENT IN dB = ");
printf("\n\n\t The above expression is equivalent to 1.76+20*log10(Df)");

//(b)Determine the improvement in post detection SNR and Bandwidth
//Given data
fd1=400*10^3;                //Hz - PEAK FREQUENCY DEVIATION
Ba1=4*10^3;                  //Hz- BANDWIDTH
//Frequency Deviation Ratio
Df1=fd1/Ba1;
//SNR Improvement expression from part(a)
SNR_imp_dB1=1.76+20*log10(Df1);
//Bandwidth
Bm=2*(Df1+1)*Ba1;
printf("\n\n\t The SNR Improvement = %0.2f dB.",SNR_imp_dB1);
printf("\n\n\t The Bandwidth of FM-IM, Bm = %1.0f kHz.",Bm/10^3);