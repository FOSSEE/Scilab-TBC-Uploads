
//Variable Decalration

PA=24   //Transmit power by station A(dBW)
G1=54   //Antenna Gain(dB)
PC=30   //Transmit power by station C(dBW)
G2=24.47//off-axis gain in the S1 direction(dB)
PD=4      //Polarization discrimination(dB)

//Calculation

CIR=PA-PC+G1-G2+PD   //Carrier to Interference ratio(dB)

//Result
printf("The Carrier to interfernce ratio on uplink is %.2f dB",CIR)
