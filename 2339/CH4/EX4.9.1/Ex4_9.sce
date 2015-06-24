clc
clear

//For throttling H1=H2

//At 11 bar
Hf=781.3;           //in kJ/kg
Hfg=2000.4;         //in kJ/kg

//At 1 bar
Hg=2675.5;          //in kJ/kg
x=(Hg-Hf)/Hfg;
printf('The Dryness Fraction: %3.3f kJ/kg',x);
printf('\n');
