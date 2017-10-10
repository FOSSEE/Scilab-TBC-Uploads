clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 1   :  DC Circuits 
// Chapter 2:  Basic Laws 
// Example 2 - 15

clear; clc; close; 
//
// Given data
V    = 120.00;      
Rac  =  12.50;       
Rcb  =  15.00;       
Rcn  =   5.00;      
Rbn  =  20.00;     
Ran  =  10.00;       
Rab  =  30.00;      
//
// Calculations
// Convert Y Network to Equivalent Delta Network 
// Calculations Rabc
Rabc = (Ran*Rbn)+ (Rbn*Rcn) + (Rcn*Ran)         
// Calculations Ra
Ra   = Rabc/Ran;                                
// Calculations Rb
Rb   = Rabc/Rbn;                                
// Calculations Rc
Rc   = Rabc/Rcn;                               
// Calculations RP1 
RP1 = (Rc*Rab)/(Rc+Rab);                        
// Calculations RP2  
RP2 = (Rb*Rac)/(Rb+Rac);                        
// Calculations RP3 
RP3 = (Ra*Rcb)/(Ra+Rcb);                       
// Calculations RS1
RS1 = RP2 + RP3;                              
// Calculations Req
Req = (RP1*RS1)/(RP1 + RS1)                    
// Calculations Current (I)
I = V/Req                                     
// Display the result
disp("Example 2-15 Solution : ");
printf(" \n Rab : Resistance Equivalen(Rab) = %.3f Ohm ",Req);
printf(" \n I   : Current (I)               = %.3f A",I);



