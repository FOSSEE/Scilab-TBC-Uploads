clear;
clc;
// Example 9.1
printf('Example 9.1\n\n');
// Page no. 228
// Solution

// Given 
//Main eqn. C6H12O6 + aO2 ---> bCO2 + cH2O
// By carbon balance
b = 6 ;

//By hydrogen balance
c = 6;

//Balancing oxygen in reaction
a = (c*1+b*2-6)/2;
printf('Value of a is  %i\n',a);
printf('Value of b is  %i\n',b);
printf('Value of c is  %i\n',c);