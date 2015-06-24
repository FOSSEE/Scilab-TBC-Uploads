
//Variable Declaration

B=36*10**6      //Transponder Bandwidth(Hz)
R=0.2     //Roll off factor 
GTR=31    //Earth station G/T(dB/K)
LOSSES=200  //Total transmission losses(dB)
k=-228.6    //Value of k(dB)
BER=10**-5  //Value of Bit error rate
EbN0R=9.6   //Value of Eb/N0 from fig.10.17
//Calculation

Rb=2*B/(1+R)      //Bit rate(sec^-1)
Rb=10*log10(Rb)  //Converting Rb into decibels
CNR=EbN0R+Rb      //Carrier to noise ratio(dB)
EIRP=CNR-GTR+LOSSES+k  //Equivalent Isotropically radiated power(dBW)


//Results
printf("Bit rate that can be accommodated is %.1f dB",Rb)
printf("The EIRP required is %.1f dBW",EIRP)


