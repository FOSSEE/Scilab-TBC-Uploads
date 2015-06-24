//Variable Declaration

delF=200 //Peak Deviation(kHz)
f=0.8    //Test tone frequency (kHz)

//Calculation
m=delF/f  //Modualtion index
B=2*(delF+f)  //Bandwidth of the signal(kHz)

//Results
printf("The modulation index is %.f" , m)
printf("Bandwidth of the signal is %.1f kHz",B)

