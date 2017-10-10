//Calculate the value of the Standard molar Entropy of the reactions (a)CaCO3(s)gives CaO(s)+CO2(g).(b)2H2(g)+O2(g)gives 2H2O(l).(c)N2(g)+O2(g)gives 2NO(g)

//Example 5.8

clc;

clear;

Sbar1=39.8;  //Standard Molar Entropy of CaO in J K^-1 mol^-1

Sbar2=213.6;  //Standard Molar Entropy of CO2 in J K^-1 mol^-1

Sbar3=92.9;  //Standard Molar Entropy of CaCO3 in J K^-1 mol^-1

delrS1=(Sbar1+Sbar2)-(Sbar3);  //Standard Molar Entropy change for the reaction (a)in J K^-1 mol^-1

printf("(a)Standard Molar Entropy change for Calcium Carbonate = %.1f J K^-1 mol^-1",delrS1);

Sbar4=69.9;  //Standard Molar Entropy of H2O in J K^-1 mol^-1

Sbar5=130.6;  //Standard Molar Entropy of H2 in J K^-1 mol^-1

Sbar6=205.0;  //Standard Molar Entropy of O2 in J K^-1 mol^-1

delrS2=(2*Sbar4)-((2*Sbar5)+(Sbar6)); //Standard Molar Entropy change for the reaction (b)in J K^-1 mol^-1

printf("\n (b)Standard Molar Entropy change for Hydrogen = %.1f J K^-1 mol^-1",delrS2);

Sbar7=210.6;  //Standard Molar Entropy of NO in J K^-1 mol^-1

Sbar8=191.5;  //Standard Molar Entropy of N2 in J K^-1 mol^-1

Sbar9=205.0  //Standard Molar Entropy of O2 in J K^-1 mol^-1

delrS3=(2*Sbar7)-((Sbar8)+(Sbar9));  //Standard Molar Entropy change for the reaction (c)in J K^-1 mol^-1

printf("\n (c)Standard Molar Entropy change for Nitrogen = %.1f J K^-1 mol^-1",delrS3);
