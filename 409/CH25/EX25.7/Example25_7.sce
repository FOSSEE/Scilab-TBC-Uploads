clear ;
clc;
// Example 25.7
printf('Example 25.7\n\n');
//page no. 777
// Solution 

// Given 
//Bhopal Process
//CH3NH2 + COCl2 + --> C2H3NO +2HCl                (A)
//C2H3NO + C10H8O --> C12H11O2N                      (B)
//Alternate process
//C10H8O + COCl2 --> C11H7O2Cl                            (C)
//C11H7O2Cl + CH3NH2 --> C12H11O2N + HCl      (D)

H_Cb = -26 ;//Standard heat of formation of carbaryl(C12H11O2N) -[kJ/ g mol]
H_HCl = -92.311 ;//Standard heat of formation of HCl -[kJ/ g mol]
H_Ma = -20.0 ;//Standard heat of formation of methyl amine(CH3NH2) -[kJ/ g mol]
H_Mi = -9*10^4 ;//Standard heat of formation of methyl isocynate(C2H3NO) -[kJ/ g mol]
H_Nc = -17.9 ;//Standard heat of formation of 1-Napthalenyl chloroformate(C11H7O2Cl) -[kJ/ g mol]
H_N = 30.9 ;//Standard heat of formation of napthol(C10H8O) -[kJ/ g mol]
H_P = -221.85 ;//Standard heat of formation of phosgene(COCl2) -[kJ/ g mol]

H_rxn_a = (2*H_HCl + 1*H_Mi) - (1*(H_Ma) + 1*H_P )  ;// Heat of reaction (A)-[kJ]
H_rxn_b = (1*H_Cb ) - (1*(H_Mi) + 1*H_N )  ;// Heat of reaction (B)-[kJ]
H_rxn_c = (1*H_Nc) - (1*(H_N) + 1*H_P )  ;// Heat of reaction (C)-[kJ]
H_rxn_d = (1*H_Cb + 1*H_HCl) - (1*(H_Nc) + 1*H_Ma )  ;// Heat of reaction (D)-[kJ]

//Bhopal Process
printf(' Bhopal process .\n')  ;
printf('   (a) Heat of reaction (A) is %.1e kJ.\n',H_rxn_a) ;
printf('   (b) Heat of reaction (B) is %.1e kJ.\n',H_rxn_b) ;

//Alternate process
printf('\n  Alternate process .\n')  ;
printf('   (c) Heat of reaction (C) is %.2f kJ.\n',H_rxn_c)  ;
printf('   (d) Heat of reaction (D) is %.2f kJ.\n',H_rxn_d)  ;
printf(' \nThe above data show that capital cost of Bhopal process could be higher than alternate process.\n')  ;