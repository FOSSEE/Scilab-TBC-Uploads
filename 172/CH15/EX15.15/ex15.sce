//ques15
//calculatng reversible elecromotive force 
clear
clc
//1-H2O
//2-H2
//3-O2
//hf-standard enthalpy 
//sf-standard entropy
hf1=-285.830;//kJ
hf2=0;//kJ
hf3=0;//kJ
sf1=69.950;//kJ/K
sf2=130.678;//kJ/K
sf3=205.148;//kJ/K
dH=2*hf1-2*hf2-hf3;//change in enthalpy in kJ
dS=2*sf1-2*sf2-sf3;//change in entropy in kJ/K
T=298.15;//temperature in K
dG=dH-T*dS/1000;//change in gibbs free energy in kJ
E=-dG*1000/(96485*4);//emf in V
printf('Reversible electromotive Force = %.3f V',E);