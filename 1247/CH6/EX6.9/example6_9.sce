clear;
clc;

// Stoichiometry
// Chapter 6
// Stoichiometry and Unit Operations


// Example 6.9
// Page 367
printf("Example 6.9, Page 367 \n \n");

// solution

// basis 100 kg free water
Na2SO4in = 32 //kg
Win = 68 //kg
W1 = (180/142)*32 //kg   water with Na2SO4
Wfree1 = Win-W1
GS1 = ((Na2SO4in+W1)*100)/Wfree1 //kg    glauber salt present in 100 kg free water
W2 = (180*19.4)/142 // water associated with Na2SO4 in final mother liquor
Wfree2 = 100-W2
GS2 = ((19.4+W2)/Wfree2)*100
Y = GS1-GS2 //kg
p = Y*100/GS1
printf("Percent yield of glauber salt = "+string(p)+".")
