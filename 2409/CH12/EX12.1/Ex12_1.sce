
//Variable Declaration
P=6  //Transmit power(Watts)
G=48.2 //Antenna Gain(dB)

//Calculation
EIRP=10*log10(P)+G  //Equivalent isotropic radiated power(dB)

//Result
printf("Hence the Equivalent isotropic radiated power is %.0f dBW",EIRP)
