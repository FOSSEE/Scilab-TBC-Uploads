
//Variable Declaration

Nu=100   //Noise spectral density for uplink(dBHz)
Nd=87    //Noise spectral density for downlink(dBHz)

//Calculation

N0CR=10**(-Nu/10)+10**(-Nd/10)  //Noise to carrier ratio
CNR=-10*log10(N0CR)   //Combined c/N0 ratio(dBHz)

//Result
printf("The combined carrier to noise ratio is %.2f dBHz",CNR)

