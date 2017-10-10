////Variable Declaration
p0 = 0.394        //Probabilities of Energy level 1,2,3 
p1by2 = 0.239
p2 = 0.145

//Calculation
p4 = 1. -(p0+p1by2+p2)

//Results
printf("\n Probability of finding an oscillator at energy level of n>3 is %4.3f",p4)

