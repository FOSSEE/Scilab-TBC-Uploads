////
//Variable Declaration

aH = 40         //Number of heads
N = 100         //Total events

//Calculations
aT = 100 - aH
We = factorial(N)/(factorial(aT)*factorial(aH))
Wexpected = factorial(N)/(factorial(N/2)*factorial(N/2))

//Results
printf("\n The observed weight %5.2e compared to %5.2e",We,Wexpected)

