////
//Variable Declaration
n = 52         //Number of cards in std . pack
j = 5          //Number of cards in subset

//Calculation
C = factorial(n)/(factorial(j)*factorial(n-j))

//Results
printf("\n Maximum Possible 5-card combinations are %8d",C)

