clc
//initialisation of variables
P= 1500 //psig
V= 5 //gal
P1= 3000 //psig
P2= 2000 //psig
//CALCULATIONS
V2= V*231*(P2+14.7)/(P1-P2)
V1= V2*(P1+14.7)/((P+14.7)*231)
//RESULTS
printf ('Size of accumulator = %.2f gal',V1)
