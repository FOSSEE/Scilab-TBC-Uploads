clear;
clc;

// Stoichiometry
// Chapter 6
// Stoichiometry and Unit Operations


// Example 6.10
// Page 368
printf("Example 6.10, Page 368 \n \n");

// solution

// basis 100kg free water in original sol
// initial T = 353K
W1 = (126/120.3)*64.2   //kg
Wfree1 = 100-W1
MS1 = ((64.20+W1)*100)/32.76 // MgSO4.7H2O in 100kg free water
// 4% of original sol evaporates
E = (MS1 + 100)*.04
Wfree2 = 100-E  // free water in mother liquor
// at 303.15 K
W2 = (126/120.3)*40.8
Wfree3 = 100-W2
MS2 = (W2+40.80)*Wfree2/Wfree3  // crystals of MgSO4.7H2O
y = MS1-MS2 //kg 
q = 501.2*1000/284.6 // quantity of original sol to be fed
printf(" Quantity if original solution to be fed to the crystallizer per 1000kg crystals of MgSO4.7H2O = "+string(q)+"kg.")
