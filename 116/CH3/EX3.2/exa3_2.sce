//Caption:Program to calculate the minimum bit rate for a PCM encoder must provide for high fidelity
 
//Example 3.2
 
//Page 105
 
dr=40//dynamic range=400dB
 
SNR=50//signal to noise ratio =5 0dB
 
SQR=dr+SNR 
 
n=[(SQR-1.76)/6.02] 
 
disp('This can be approximated to 15 bits per sample')
 
disp('Assuming excess sampling factor using D-type channel, we choose sampling rate as 48KHz')  
 
disp('Therefore required bit rate is')
 
15*48000 
 
//Result

//720kbps
 