clear
//Initialisation
f1=7000                         //Human Speech Frequency Upper limit in HZ
f2=50                         //Human Speech Frequency Lower limit in Hz

//Calculation
B=f1-f2                            //Bandwidth in Hz

//Result
printf("\n Bandwidth = %.1f kHz",B*1000**-1)

