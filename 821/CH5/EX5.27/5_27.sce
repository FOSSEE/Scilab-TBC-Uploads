dGC2H6O=-41.77;//Standard free energy change of C2H6O in Kcal per mol//
dGCO2=-94.26;//Standard free energy change of CO2 in Kcal per mol//
dGH2O=-56.69;//Standard free energy change of C2H6O in Kcal per mol//
dGO2=0;//Standard free energy change of O2 in Kcal per mol//
dG=2*dGCO2+3*dGH2O-dGC2H6O-3*dGO2;//Standard free energy change in Kcal//
printf('Standard free energy change accompanying the combustion of ethanol at 298K=%fKcal',dG);
