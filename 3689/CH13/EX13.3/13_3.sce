////Variable Declaration
p0 = 0.633        //Probabilities of Energy level 1,2,3 
p1 = 0.233
p2 = 0.086

//Calculation
p4 = 1. -(p0+p1+p2)

//Results
printf("\n Probability of finding an oscillator at energy level of n>3 is %4.3f i.e.%4.1f percent",p4,p4*100)

