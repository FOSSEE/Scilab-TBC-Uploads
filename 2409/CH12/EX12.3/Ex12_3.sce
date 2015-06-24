
//Variable Declaration
r=42000      //Range between ground station and satellite
f=6000          //Frequency(MHz)

//Calculation

FSL=32.4+20*log10(r)+20*log10(f)  //Free space loss(dB)

//Result
printf("The free space loss at given frequency is %.1f dB", FSL)

