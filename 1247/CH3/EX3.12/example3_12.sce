clear;
clc;

// Stoichiometry
// Chapter 3
// Material Balances Without Chemical Reaction


// Example 3.12
// Page 70
printf("Example 3.12, Page 70 \n \n");

// solution
m = 100  // kg
x = linspace(70,110,5);
y = linspace(100,115,4);
y1 = 27.8/.203 - .075*x/.203
y2 = 72.2/.673 - .035*x/.673
x = linspace(70,110,5);
plot(x,y1,style=4)
plot(x,y2,style=8)
// from graph its clear x = 93.4 kg and y = 102.4 kg.
x = 93.4;
y = 102.4;
M = x+y // [kg] total mixture
Ms = M - m //[kg] mixed solvent
Mr = Ms/m // mixed solvent/original mixture
S1 = x*.574+y*.028 //[kg] water balance
S2 = x*.316+y*.096 //[kg] acetic acid balance
Qs = S1+S2
pS1 = (S1*100)/Qs
pS2 = 100-pS1
printf("(a) \n \nUpper layer = "+string(x)+" kg and Lower layer = "+string(y)+"\n \n \n(b) \n \nmass ratio of the mixed solvent to the original mixture is "+string(Mr)+" \n \n \n (c) \n \nwater mass percent = "+string(pS1)+" and acetic acid mass percent = "+string(pS2)+".")
