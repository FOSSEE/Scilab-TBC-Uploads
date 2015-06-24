
//Variable Declaration

TAn=35  // Antenna Noise Temperature(Kelvin)
TRn=100 // Receiver Noise Temperature(Kelvin)
k=1.38*10**-23  //Boltzman constant(joules)
B=36*10**6  //Bandwidth

//Calculation
N0=(TAn+TRn)*k   //noise power density(10**-21 joules)
PN=N0*B/10**-12         //Noise power for given bandwidth(picoWatts)


//Results
printf("The noise Power density is %.2e Joules",N0)
printf("The noise power for given bandwidth is %.3f pW",PN)
