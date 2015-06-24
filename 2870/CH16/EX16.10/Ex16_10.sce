clc;clear;
//Example 16.10

//given data
T=358;
P=300/100;//in bar

//constants used
M=2;
s=0.00901;//solubility in kmol/m^3 bar
p=0.027;

//calculations
pH2=s*P;
disp(pH2,'molar density of H2 in kmol/m^3');
pH2=p*M;
disp(pH2,'mass density of H2 in kg/m^3')
