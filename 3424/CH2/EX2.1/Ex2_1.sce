clc
//Initialization of variables
SG = 0.68 // Specific gravity
h = 17 // ft
hH2O = 3 //ft
// Calculations
P1 = (SG*h*62.4) // lb/ft^2
P11 = P1/144 // lb/in^2
H1 = P1/62.4 //ft
P2 = P1 + 62.4*(hH2O) //lb/ft^2
P22 = P2/144 //lb/in^2
H2 = P2/62.4 //ft
//Results
printf("The minimum tube diameter is %.f lb/ft^2",P1)
printf("\nThe minimum tube diameter is %.2f lb/in^2",P11)
printf("\nThe minimum tube diameter is %.1f ft",H1)
printf("\nThe minimum tube diameter is %.f lb/ft^2",P2)
printf("\nThe minimum tube diameter is %.2f lb/in^2",P22)
printf("\nThe minimum tube diameter is %.1f ft",H2)
