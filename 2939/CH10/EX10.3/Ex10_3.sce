//Ex10_3

clc;

// Given:
M1=137.32;// moleular wt of barium
M2=32;// molecular weight of sulphur
M3=16;// molecular wt of oxygen
M4=233.32;// molecular wt of BaSO4
ai=40000;// specific initial activity in counts min^-1 mg^-1
af=187/20;// specific final activity in counts min^-1 0.1ml^-1

// Formula:
// (1)S1=(af/ai)*(10/M) in moles/lit
// (2)S2=(af/ai)*(10^4) in mg/lit

// Solution:

S1=(af/ai)*(10/M4); // solubility of BaSO4 in moles/lit
S2=(af/ai)*10^4;// solubility of BaSO4 in mg/lit
printf("\n The solubility of BaSO4 in moles/lit is = %f",S1)
printf("\n \n The solubility of BaSO4 in mg/lit is = %f",S2)


