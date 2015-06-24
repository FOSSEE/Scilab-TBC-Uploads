clc
//initialisation of variables
V1= 1500 //in^3
T= 80 //F
T1= 200 //F
//CALCULATIONS
V2= V1*(460+T1)/(T+460)
//RESULTS
printf ('volume the heated gas will occupy = %.1f in^3',V2)
