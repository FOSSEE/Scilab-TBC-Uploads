
//Variable Declaration
CIR1=27.53   //Carrier to interference ratio from Example 13.1(dB)
CIR2=23.53   //Carrier to interference ratio from Example 13.2(dB)

//Calculation
ICRu=10**(-CIR1/10)  //Interferece to carrier ratio for uplink
ICRd=10**(-CIR2/10)  //Interferece to carrier ratio for downlink

ICRant=ICRu+ICRd   //Overall Interferece to carrier ratio
CIRant=-10*log10(ICRant)//Overall Carrier to interference ratio (dB)

//Result
printf("The overall carrier to interference ratio is %.2f dB",CIRant)
