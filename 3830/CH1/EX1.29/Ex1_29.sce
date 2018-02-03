// Exa 1.29

clc;
clear;

// Given

// 3 resistances in series and parallel combination

r1 = 200; // First resistance in (Ohms)
dr1 = 5 ; // Percentage variation for first resistance
r2 = 100; // Second resistance in (Ohms)
dr2 = 5 ; // Percentage variation for second resistance
r3 = 50; // Third resistance in (Ohms)
dr3 = 5 ; // Percentage variation for third resistance

// Solution

printf('Lets say Rse be the series combination of resistances \n');// series
Rse = r1+r2+r3;
Relative_Error_series = r1/Rse * dr1 + r2/Rse * dr2 + r3/Rse * dr3; // in percentage
Error_series_Ohms = Rse * Relative_Error_series/100;
printf(' The Relative error for series combination(Rse) is %d percent which is equivalent to %.2f Ohms \n',Relative_Error_series,Error_series_Ohms);
printf(' Lets say Rpa be the parallel combination of resistances \n');// parallel
Rpa = r1*r2*r3/(r2*r3+r1*r2+r1*r3);  // lets say (x/y1+y2+y3)
Error_x = dr1+dr2+dr3;
Error_y1 = dr1+dr2;
Error_y2 = dr2+dr3;
Error_y3 = dr3+dr1;
Error_Y = r1/Rse * Error_y1 + r2/Rse * Error_y2 + r3/Rse * Error_y3;
Relative_Error_parallel = Error_x+ Error_Y;  // in percentage
Error_parallel_Ohms = Rpa * Relative_Error_parallel/100 ;
printf(' The Relative error for parallel combination(Rpa) is %d percent which is equivalent to %.4f Ohms \n',Relative_Error_parallel,Error_parallel_Ohms);
