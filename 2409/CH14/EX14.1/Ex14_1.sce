
//Variable Declaration

Btr=36  //Transponder Bandwidth(MHz)
B=3    //Carrier Bandwidth(MHz)
EIRP=27  //saturated EIRP(dBW)
BO=6   //Back off loss(dB)
LOSSES=196  //Combined losses(dB)
GTR=30   //Earth station G/T ratio(dB)
k=228.6  //Value of k(dB)
//Calculation

Btr1=10*log10(Btr*10**6)  //Converting transponder Bandwidth into decibels
B1=10*log10(B*10**6)  //Converting carrier Bandwidth into decibels

CNR=EIRP+GTR-LOSSES+k-Btr1 //Carrier to noise ratio for single carrier operation(dB)
CNR=round(CNR)
alpha=-BO
K=alpha+Btr1-B1  //Fraction of Bandwidth actually occupied(dB)
K=10**(K/10)  //Converting decibels to ratio
K=round(K)

//Results

printf("The downlink carrier to noise ratio is %.0f dB",CNR)
printf("Fraction of Bandwidth actually occupied is %.0f",K)
printf("No. of carriers that would be accommodated without backoff is %.f",Btr/B)
