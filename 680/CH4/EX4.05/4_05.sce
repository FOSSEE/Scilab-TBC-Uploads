//Problem 4.05:

//initializing the variables:
e1 = 0.65; 
e2 = 0.98;
mdtin = 76; // in lb

//calculation:
mdtout1 = (1 - e1)*mdtin
mdtout2 = (1 - e2)*mdtout1
E = 1 - mdtout2/mdtin

printf("\n\nResult\n\n")
printf("\n overall fractional efficiency is %.3f",E)