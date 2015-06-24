
//Variable Declaration

CNR=87.3   //Downlink Carrier to noise ratio(dBHz)
BER=10**-5  //Bit Error Rate Required
R=0.2   //Roll off factor
EbN0R=9.5   //Eb/N0 ratio(dB)

//Calculation
Rb=CNR-EbN0R  //Maximum Transmission Rate(dBb/s)
Rb1=10**(Rb/10) //Maximum Transmission Rate(b/s)
BIF=Rb1*1.2*10**-6/2  //IF Bandwith required

//Result
printf("The Maximum Transmission rate is %.2f dBb/s",Rb)
printf("The IF bandwidth required is %.2f MHz",BIF)
