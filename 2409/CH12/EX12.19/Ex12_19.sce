
//Variable declaration
//For uplink
Ps=-67.5   //Saturation flux density(dB)
A0=-37     //Antenna aperture at 6GHz(dB)
IBO=-11    //Input Backoff(dB)
GTRs=-11.6 //Satellite saturation G/T (dB)
k=-228.6   //Value of k(dB)

//For Downlink
EIRP=26.6  //Satellite EIRP(dB)
OBO=-6     //output Backoff(dB)
FSL=-196.7 //Free Space loss(dB)
GTRe=40.7  //Earth station G/T(dB)

//Calculation
CNRu=Ps+A0+IBO+GTRs-k     //Carrier to noise ratio for uplink(dB)
CNRd=EIRP+OBO+FSL+GTRe-k//Carrier to noise ratio for downlink(dB)
N0CR=10**(-CNRu/10)+10**(-CNRd/10)  //Noise to carrier ratio
CNR=-10*log10(N0CR)   //Combined c/N0 ratio(dBHz)

//results
printf("The Carrier to noise ratio for uplink is %.2f dB",CNRu)
printf("The Carrier to noise ratio for downlink is %.2f dB",CNRd)
printf("The combined carrier to noise ratio is %.2f dBHz",CNR)
