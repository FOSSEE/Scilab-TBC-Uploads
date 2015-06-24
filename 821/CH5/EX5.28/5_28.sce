dGCH3COOH=-93.8;//Standard free energy change of CH3COOH in Kcal per mol//
dGCH3CH2OH=-41.77;//Standard free energy change of CH3CH2OH in Kcal per mol//
dGH2O=-56.69;//Standard free energy change of C2H6O in Kcal per mol//
dGO2=0;//Standard free energy change of O2 in Kcal per mol//
dG=dGCH3COOH+dGH2O-dGCH3CH2OH-dGO2;//Standard free energy change in Kcal//
printf('Standard free energy change accompanying the Oxidation of ethanol to acetic acid=%fKcal',dG);
printf('\nSince dG is negative the reaction is feasible under these conditions.');
