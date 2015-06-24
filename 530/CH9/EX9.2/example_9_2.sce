clear;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 9
// Mass Transfer


// Example 9.2
// Page 350
printf("Example 9.2, Page 350 \n \n");

// From Table 9.1 at 1 atm and 25 C
Dab = 0.62*10^-5 ; // [m^2/s]
// Therefore at 2 atm and 50 C
Dab2 = Dab*(1/2)*(323/298)^1.5 ;
printf("Dab at 2 atm & 50 C = %e m^2/s",Dab2);