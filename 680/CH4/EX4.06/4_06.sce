//Problem 4.06:

//initializing the variables:
e1 = 0.65; 
e2 = 0.98;
mdtin = 76; // in lb

//calculation:
mdtout1 = (1 - e1)*mdtin
mdtout2 = (1 - e2)*mdtout1
E = 1 - mdtout2/mdtin
perE = E*100

printf("\n\nResult\n\n")
printf("\n overall fractional efficiency at percent basis is %.1f percent",perE)