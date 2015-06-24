

//Variable Declaration

alpha=1.9    //Rain attenuation(dB)
CNR=20       //Downlink carrier to noise ratio(dB)
Tn=400       //Effective Noise temperature(Kelvin)
Ta=280       //Reference temperature(Kelvin)

//Calculation
alpha1=10**(alpha/10)  //Converting alpha to ratio
Trn=Ta*(1-1/alpha1)    //Equivalent noise temperature of rain(kelvin)
Ts=Tn+Trn        //New system noise temperature
delp=10*log10(Ts/Tn)  //Decibel increase in noise power
CNRN=CNR-delp-alpha   //Value below which CNR falls(dB)


//Result
printf("The value below which C/N falls for 0.1 percent of time is %.2f dB",CNRN)
