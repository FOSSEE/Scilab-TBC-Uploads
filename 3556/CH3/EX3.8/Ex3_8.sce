clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 1   :  DC Circuits 
// Chapter 3:  Methods of Analysis
// Example 3 - 8

clear; clc; close; 
//
// Given data
// Diagonal term of G 
G11 = (1/5.00) + (1/10.00);                 
G22 = (1/5.00) + (1/8.00) + (1/1.00);       
G33 = (1/8.00) + (1/8.00) + (1/4.00);       
G44 = (1/8.00) + (1/2.00) + (1.00);         
// Off Diagonal term of G 
G12 = (-1/5.00); G13 = 0.00; G14 = 0.00;    
G21 = -0.20; G23 = -1/8.00;  G24 = -1.00;   
G31 = G13; G32 = G23; G34 = -0.1250;        
G41 = G14; G42 = G24; G43 = G34;            
// Input Current 
I1 = -3.00;                                 
I2 = -3.00;                                 
I3 =  0.00;                                 
I4 =  6.00;                                 
//
// Calculations
// Calculations V1, V2, V3 and V4  
G = [ G11   G12   G13   G14;
      G21   G22   G23   G24;
      G31   G32   G33   G34;
      G41   G42   G43   G44];
I = [ I1;  I2;  I3;  I4];
V = inv(G)*I
//
// Display the result
disp("Example 3-8 Solution : ");
printf(" \n V1  = Voltage for Node 1        = %.3f Volt",V(1))
printf(" \n V2  = Voltage for Node 2        = %.3f Volt",V(2))
printf(" \n V3  = Voltage for Node 3        = %.3f Volt",V(3))
printf(" \n V4  = Voltage for Node 4        = %.3f Volt",V(4))

