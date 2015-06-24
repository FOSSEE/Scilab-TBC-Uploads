
//Variable Declaration

B=36     //Transponder Bandwidth(MHz)
CNR=22   //Carrier to noise ratio(dB)
LOSSES=200  //Total transmission losses(dB)
GTR=31     //Earth station G/T (dB/K)
k=-228.6   //Value of k(dB)

//Calculation
B=10*log10(B*10**6)   //Converting Bandwidth to dB
EIRP=CNR-GTR+LOSSES+k+B    //Equivalent isotropically radiated power(dB)

//Result
printf("Satellite EIRP required is %.0f dB",EIRP)
