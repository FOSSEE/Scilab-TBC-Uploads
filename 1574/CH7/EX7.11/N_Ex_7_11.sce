clc
//Chapter7
//Example7.11
//Given
ma=0.3
SNR=20// s/n ratio
SNR1=10^(0.1*SNR)
SNR_new=SNR+3
ma2=0.6// increased new depth of modulation
Pt_Ni=SNR1*((1+(ma^2))/(ma^2))
SNR2=10*log10(Pt_Ni*((ma2^2)/(1+((ma2^2)/2))))

mprintf('a)\n  New SNR for 3dB increase in input s/g is %d dBs\nb)  When Modulation depth is increased to 60%c\n SNR becomes %f dBs',SNR_new,'%',SNR2)
