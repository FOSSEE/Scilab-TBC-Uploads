
//Variable Declaration

n=24  //Number of channels
g=13.57  //Peak/rms factor(dB)
b=3.1  //Channel Bandwidth(kHz)
P=4     //Emphasis improvement (dB)
W=2.5   //Noise weighting improvement(dB)
CNR=25  //Carrier to noise ratio (dB)
delFrms=35  //rms value of Peak Deviation(kHz)
fm=108    //Baseband frequency (kHz)
//Calculation
 
L=10**((-1+4*log10(n))/20)
g=10**(g/20)  //Converting process gain to ratio
delF=g*delFrms*L  //Peak Deviation(Hz)
BIF=2*(delF+fm)   //Signal Bandwidth(kHz) by Carson's rule
Gp=(BIF/b)*((delFrms/fm)**2)  //Processing Gain
Gp=10*log10(Gp)  //Converting Gp to dB
SNR=CNR+Gp+P+W  //Signal to noise ratio for top channel in 24-channel FDM basseband signal

//Results
printf("Signal to noise ratio for top channel in 24-channel FDM Baseband signal is %.1f db", SNR)
