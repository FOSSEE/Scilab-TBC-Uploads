
//Variable Declaration

CNRu=23   //carrier to noise ratio for uplink(dB)
CNRd=20   //carrier to noise ratio for downlink(dB)
CNRm=24   //carrier to noise ratio for intermodulation(dB)

//Calculation

NCR=10**(-CNRu/10)+10**(-CNRd/10)+10**(-CNRm/10)  //Combined Noise to carrier ratio
CNR=-10*log10(NCR)  //Combined carrier to noise ratio(dB)

//Result
printf("The combined carrier to noise ratio is %.2f dB",CNR)

