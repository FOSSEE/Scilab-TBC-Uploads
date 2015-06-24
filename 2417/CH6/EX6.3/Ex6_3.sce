clear;
clc;
printf("\t\t\tProblem Number 6.3\n\n\n");
// Chapter 6: The Ideal Gas
// Problem 6.3 (page no. 242) 
// Solution

T1=32+460; //Temperature at volume V1=150 ft^3 //Unit:R
V1=150; //Unit:ft^3 //V1=Volume at 32 F
T2=100+460 // Increased Temperature //Unit:R
//Charles's law,V1/V2 = T1/T2
V2=(T2*V1)/T1; //Volume occupied by gas //unit:m^3
printf("Volume occupied by gas = %f m^3",V2);
