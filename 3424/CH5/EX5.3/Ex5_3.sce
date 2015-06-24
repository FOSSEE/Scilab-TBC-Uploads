clc
//Initialization of variables
QCo2 = 10 // ft^3/min
A = 50 // ft^2
h = 6 // ft
// Calculations
dh_dt = QCo2/A 
th6 = h/(dh_dt)
//results
printf(" the time rate of change of depth is %.2f ft/min",dh_dt)
printf("\n the time taken to reach 6 feet is %.f min",th6)
