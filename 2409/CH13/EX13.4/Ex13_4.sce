
//Variable Declaration

SSi=4 //Initial satellite spacing(degrees)
SSl=2 //Later Satellite spacing(degrees)

//Calculation

IIR=(29-25*log10(SSl))-(29-25*log10(SSi))  //Increase in Interference(dB)

//Result
printf("The degradation in downlink C/I is %.1f dB",IIR)
