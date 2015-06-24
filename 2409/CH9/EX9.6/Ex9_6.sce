
//Variable Declaration

delF=9  //Peak Deviation (MHz) 
fm=4.2  //Baseband frequency(MHz)
SNR=62  //Signal to noise ration(dB)
M=11.8  //Noise weighing(P)+emphasis improvement(W)-implementation margin(IMP)

//Calculation

D=delF/fm  //Modulation Index
GPV=12*(D**2)*(D+1)  //Processing Gain for TV
GPV=10*log10(GPV)  //Converting GPV into dB
CNR=SNR-GPV-M   //carrier to noise ratio(dB)

//Results
printf("The Carrier to noise ratio required at the input of FM detector is %.1f dB",CNR)
