

//Variable Declaration

EIRP=25    //Satellite saturation value(dBW)
BO=6       //Output Backoff loss(dB)
FSL=196    //Free space loss(dB)
DL=1.5     //Downlink losses(dB)
GTR=41     //Earth station G/T(dB/K)
k=-228.6   //Value of k(dB)

//Calculation
CNR=EIRP-BO+GTR-FSL-DL-k  //Carrier to noise ratio(dB)

//Result
printf("The Carrier to noise density ratio at the earth station is %.1f dB",CNR)
