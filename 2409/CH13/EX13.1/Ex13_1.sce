//Variable Declaration
EIRP1=34     //desired carrier EIRP from satellite(dB)
G1=44    // ground station receiving antenna gain(dB)
G2=24.47 //Gain in desired direction(dB)
EIRP2=34  //EIRP by interfering satellite(dB)
PD=4      //Polarization discrimination(dB)

//Calculation
CIR=EIRP1-EIRP2+G1-G2+PD  //Carrier to Interference ratio(dB)

//Result
printf("The Carrier to interfernce ratio at the ground receiving antenna is %.2f dB",CIR)
