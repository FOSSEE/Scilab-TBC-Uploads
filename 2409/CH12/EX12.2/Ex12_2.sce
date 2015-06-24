
//Variable Declaration

D=3  //Antenna size(m)
f=12 //Operating Frequency(GHz)
n=0.55 //Aperture efficiency

//Calculation

G=n*(10.472*f*D)**2  //Antenna Gain
G=10*log10(G)  //Converting Antenna gain to dB

//Result
printf("The Antenna gain with given parameters is %.1f dB", G)
