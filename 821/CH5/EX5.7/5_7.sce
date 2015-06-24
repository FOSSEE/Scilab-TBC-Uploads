T=298;//temperature in kelvin//
R=1.987*10^-3;
dn=-4;
dU=-1148.93;//Internal energy change of n-Heptane in kcal per mol//
dHf=dU+(R*T*dn);//dHf value of C7H16 in Kcal per mol//
printf('dHf value of C7H16=dHf=%fKcal per mol',dHf);
dHfH2O=-68.32;//dHf value of Fe2O3 in kcal per mol//
dHfCO2=-94.05;//dHf value of CO2 in kcal per mol//
dHfC7H16=(8*dHfH2O+7*dHfCO2-dHf);//dHf value of CH3COOH in Kcal per mol//
printf('\nStandard enthalpy of formation of C7H16=%fKcal per mol',dHfC7H16);
