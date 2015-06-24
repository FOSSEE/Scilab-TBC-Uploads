clc
clear
//Initialization of variables
F12=0.19
F13=F12
FR3=F13
F2R=0.38
J1=1714
Wb2=0.1714
//calculations
disp("Upon solving the simultaneous equations")
Q1=1774 //Btu/hr ft
Q2=-547 //Btu/r ft
Q3=-1227 //Btu/hr ft
J2=548 //Btu/hr ft^2
Tr=909 //R
//results
printf("Heat transfer rate from surface 1 = %d Btu/hr ft",Q1)
printf("\n Heat transfer rate from surface 2 = %d Btu/hr ft",Q2)
printf("\n Heat transfer rate from surface 3 = %d Btu/hr ft",Q3)
printf("\n Temperature of surface R = %d R",Tr)
