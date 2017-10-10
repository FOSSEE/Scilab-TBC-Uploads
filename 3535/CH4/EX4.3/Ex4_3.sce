//Chapter 4, Example 4.3, Page 94
clc
clear
// Q value of an endothermic and exothermic reaction
//Exothermic reaction
Be = 9.012182 //Reactants
He = 4.002603 //Reactants
C12 = 12 //Product
n = 1.008664 //Product
C2 = 931.5 // C^2 in MeV
Exo1 = Be+He
Exo2 = C12+n
Dif1 = Exo1-Exo2
Q1 = Dif1*C2
printf("\n Q of the exothermic reaction = %f MeV",Q1); 
//Endothermic reaction
O = 15.994915 //Reactants
n = 1.008664 //Reactant
C13 = 13.003354 //Product
He = 4.002603 //product
End1 = O+n
End2 = C13+He
Dif2 = End1-End2
Q2 = Dif2*C2
printf("\n Q of the exothermic reaction = %f MeV",Q2); 
//Answer may vary due to round off error 
