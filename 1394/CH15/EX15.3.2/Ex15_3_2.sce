
clc
//initialization of variables
tE = 33 // Time taken for ferric ion to exhaust the bed in min
tB = 23 // Time taken for nickel to break through ferric in min
l = 120 //bed length in cm
//Calculations
Theta = 2*tB/(tB+tE)
lunused = (1-Theta)*120 // cm
//Results
printf("the length of the bed unused is %.1f cm",lunused)
