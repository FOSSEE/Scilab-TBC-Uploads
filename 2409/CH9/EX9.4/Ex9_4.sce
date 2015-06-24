
//Variable Declaration

delf=5 //Deviation frequency (kHz)
Bs=1   //Test Tone Frequency (kHz)
CNR=30  //Carrier to noise ration(dB)

//Calculation
m=delf/Bs  //Modulation Index
Gp=3*(m**2)*(m+1)  //Processing gain for sinusoidal modulation
Gp=10*log10(Gp) //Converting Gp into dB
SNR=CNR+Gp

//Results
printf("The receiver processing gain is %.1f dB",Gp)
printf("\nThe Signal to noise ratio is %.1f dB",SNR)
