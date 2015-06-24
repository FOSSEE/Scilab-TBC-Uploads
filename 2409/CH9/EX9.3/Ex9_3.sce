
//Variable Declaration

Bs1=4.2  //Signal Bandwidth(MHz) of Example 9.1
delf=2.56  //Deviation Ratio of Example 9.1

delF2=200 //Peak Deviation(kHz) of Example 9.2
Bs2=0.8    //Test tone frequency (kHz) of Example 9.2

//Calculation
delF1=Bs1*delf  //Peak Deviation(MHz) of Example 9.1
BIF1=2*(delF1+2*Bs1)  //Signal Bandwidth(MHz) of Example 9.1 according to Carson's rule
BIF2=2*(delF2+2*Bs2)  //Signal Bandwidth(kHz) of Example 9.2 according to Carson's rule.

//Results

printf("Signal Bandwidth of Example 9.1 by Carsons rule is %.1f MHz",BIF1)
printf("\nSignal Bandwidth of Example 9.2 by Carsons rule is %.1f kHz",BIF2)
