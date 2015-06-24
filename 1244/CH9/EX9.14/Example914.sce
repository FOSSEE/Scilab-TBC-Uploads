

// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 9 Example # 9.14 ")

//Absolute temperature of first plate in degree R
Ta = 2040+460;
//Absolute temperature of second plate in degree R
Tb = 540+460;
//Stefans constant
sigma = 0.1718;

//For first radiation band, heat transfer is calculated
//Emissivity of A
epsilonA = 0.1;
//Emissivity of B
epsilonB = 0.9;
//Shape factor
Fab = 1/(1/epsilonA+1/epsilonB-1);
//The percentage of the total radiation within a given band is obtained from Table 9.1.
//Coefficients of T^4
A = 0.375;
//Coefficients of T^4
B = 0.004;

//Rate of heat transfer in first band in Btu/h ft2
q1 = (Fab*sigma)*(A*((Ta/100)^4)-B*((Tb/100)^4));

//Similarly for other two bands, heat transfer in Btu/h ft2
q2 = 23000;
//heat transfer in Btu/h ft2
q3 = 1240;

disp("Total rate of radiation heat transfer in Btu/h ft2")
//heat transfer in Btu/h ft2
q = q1+q2+q3
