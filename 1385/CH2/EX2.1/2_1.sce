clc
//initialisation of variables
P= 730 //mm
V= 20 //litres
T= -20 //C
P1= 760 //mm
T1= 0 //C
//CALCULATIONS
V1= P*V*(273+T1)/((273+T)*760)
//RESULTS
printf (' volume at STP = %.1f litres',V1)
