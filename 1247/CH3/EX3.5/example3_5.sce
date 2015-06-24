clear;
clc;

// Stoichiometry
// Chapter 3
// Material Balances Without Chemical Reaction


// Example 3.5
// Page 62
printf("Example 3.5, Page 62 \n \n");

// solution

m= 100 //[kg] original mixture (basis)
A = 27.8 //[kg]
B = 72.2 //[kg]
// let x and y be uper and lower layer amounts
// total mixture = (x+y) kg
// balancing A and B
X = [.075 .203;.035 .673]
d = [27.8;72.2]
x = X\d
M = X(1,1)+X(2,1) // [kg] total mixture
Ms = M - m //[kg] mixed solvent
Mr = Ms/m // mixed solvent/original mixture
S1 = x(1,1)*.574+x(2,1)*.028 //[kg] water balance
S2 = x(1,1)*.316+x(2,1)*.096 //[kg] acetic acid balance
Qs = S1+S2
pS1 = (S1*100)/Qs
pS2 = 100-pS1
printf("(a) \n \nUpper layer = "+string(x(1,1))+" kg and Lower layer = "+string(x(2,1))+"\n \n \n(b) \n \nmass ratio of the mixed solvent to the original mixture is "+string(Mr)+" \n \n \n (c) \n \nwater mass percent = "+string(pS1)+" and acetic acid mass percent = "+string(pS2)+".")
