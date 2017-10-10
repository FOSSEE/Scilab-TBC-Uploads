clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 1   :  DC Circuits 
// Chapter 3:  Methods of Analysis
// Example 3 - 9

clear; clc; close; 
//
// Given data
// Diagonal term of R 
R11 =  9.00;                                 
R22 = 10.00;                                 
R33 =  9.00;                                
R44 =  8.00;                                
R55 =  4.00;                                
// Off Diagonal term of R 
R12 = -2.00; R13 = -2.00; R14 = 0.00;   R15 = 0.00;   
R21 = -2.00; R23 = -4.00; R24 = -1.00;  R25 = -1.00;  
R31 = R13; R32 = R23; R34 = 0.00; R35 = 0.00;         
R41 = R14; R42 = R24; R43 = R34; R45 = -3.00;         
R51 = R15; R52 = R25; R53 = R35; R54 = R45;           
// Input Voltage  
V1 =  4.00;                                
V2 =  6.00;                                
V3 = -6.00;                                 
V4 =  0.00;                                
V5 = -6.00;                                 
//
// Calculations
// Calculations I1, I2, I3, I4 and I5  
R = [ R11   R12   R13   R14   R15;
      R21   R22   R23   R24   R25;
      R31   R32   R33   R34   R35;
      R41   R42   R43   R44   R45;
      R51   R52   R53   R54   R55];
V = [ V1;  V2;  V3;  V4;  V5];
I = inv(R)*V;
//
// Display the result
disp("Example 3-9 Solution : ");
printf(" \n I1  = Current for Mesh 1        = %.3f A",I(1))
printf(" \n I2  = Current for Mesh 2        = %.3f A",I(2))
printf(" \n I3  = Current for Mesh 3        = %.3f A",I(3))
printf(" \n I4  = Current for Mesh 4        = %.3f A",I(4))
printf(" \n I5  = Current for Mesh 5        = %.3f A",I(5))
R


