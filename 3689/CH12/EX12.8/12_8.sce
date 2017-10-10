//////
//Variable Declaration
n = 50          //Number of separate experiments
j1 = 25          //Number of sucessful expt with heads up
j2 = 10          //Number of sucessful expt with heads up

//Calculation
C25 = factorial(n)/(factorial(j1)*factorial(n-j1))
PE25 = (1/2)**j1
PEC25 = (1-(1/2))**(n-j1)
P25 = C25*PE25*PEC25

C10 = factorial(n)/(factorial(j2)*factorial(n-j2))
PE10 = (1/2)**j2
PEC10 = (1-(1/2))**(n-j2)
P10 = C10*PE10*PEC10

//Results
printf("\n Probability of getting 25 head out of 50 tossing is %4.3f",P25)

printf("\n Probability of getting 10 head out of 50 tossing is %4.3e",P10)

