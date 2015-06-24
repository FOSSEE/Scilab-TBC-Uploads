//ques2
//to determine change in gibbs free energy
clear
clc
//1-H2
//2-O2
//3-H2O

//at T=298 K
T1=298;//K
Hf1=0;//Enthalpy of formation of H2 at 298 K
Hf2=0;//Enthalpy of formation of O2 at 298 K
Hf3=-241.826;//enthalpy of formation of H2O at 298 K in kJ
dH=2*Hf1+Hf2-2*Hf3;//Change in enthalpy in kJ
Sf1=130.678;//Entropy of H2 at 298 K n J/K
Sf2=205.148;//Entropy of O2 at 298 K in J/K
Sf3=188.834;//entropy of H2O at 298 K in J/K
dS=2*Sf1+Sf2-2*Sf3;//Change in entropy in J/K
dG1=dH-T1*dS/1000;//change n gibbs free energy in kJ
printf(' Change in gibbs free energy at %.0f K = %.3f kJ \n' ,T1,dG1);

//at T=2000 K
T2=2000;//K
Hf1=52.942-0;//Enthalpy of formation of H2 at 2000 K
Hf2=59.176-0;//Enthalpy of formation of O2 at 2000 K
Hf3=-241.826+72.788;//enthalpy of formation of H2O at 2000 K in kJ
dH=2*Hf1+Hf2-2*Hf3;//Change in enthalpy in kJ
Sf1=188.419;//Entropy of H2 at 2000 K n J/K
Sf2=268.748;//Entropy of O2 at 2000 K in J/K
Sf3=264.769;//entropy of H2O at 2000 K in J/K
dS=2*Sf1+Sf2-2*Sf3;//Change in entropy in J/K
dG2=dH-T2*dS/1000;//change n gibbs free energy in kJ
printf('  Change in gibbs free energy at %.0f K = %.3f kJ ' ,T2,dG2);