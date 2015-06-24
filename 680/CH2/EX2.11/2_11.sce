//Problem 2.11: 

//initializing the variables:
w= 5000; // in gal
C = 50000; // in gal
Cs = 45000; // in gal
pHmin = 6;
pHn = 7;

//calculation:
CHn = 10^(-1*pHn)
CH = 10^(-1*pHmin)
X = (C/w)*[CH - Cs*CHn/C]
pH = -1*log10(X)

printf("\n\nResult\n\n")
printf("\n the pH of the most acidic waste shipment is %.2f \n",pH)
printf("\n This is the final correct answer, final answer in book is wrong\n")