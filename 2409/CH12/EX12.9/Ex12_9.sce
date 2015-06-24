//Variable Declaration

FSL=206    //Free space loss(dB)
APL=1      //Antenna Pointing loss(dB)
AAL=2      //Atmospheric Absorption loss(dB)
RFL=1      //Receiver feeder loss(dB)
EIRP=48    //Equivalent isotropically radiated power(dBW)
f=12       //Frequency(GHz)
GTR=19.5   //G/T ratio(dB/K)
k=-228.60  //Value of k(dB)

//Calculation
LOSSES=FSL+APL+AAL+RFL //Total loss(dB)
CNR=EIRP+GTR-LOSSES-k  //Carrier to noise ratio(dBHz)

//Result
printf("The carrier to noise ratio is %.2f dB",CNR)
