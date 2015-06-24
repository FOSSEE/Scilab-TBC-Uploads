
//Variable Declaration

Bs=4.2  //Signal Bandwidth(MHz)
delf=2.56  //Deviation Ratio

//Calculation
delF=Bs*delf  //Peak Deviation(MHz)
BIF=2*(delF+Bs)  //Signal Bandwidth(MHz)
BIF=BIF
//Results

printf("The peak deviation is: %.3f MHz", delF)
printf("Signal Bandwidth is : %.1f MHz",BIF)
