dHfFe2O3=-196.5;//dHf value of Fe2O3 in kcal per mol//
dHfCO2=-94.05;//dHf value of CO2 in kcal per mol//
dHfCO=-26.41;//dHf value of CO in kcal per mol//
dH298=(3*dHfCO2-dHfFe2O3-3*dHfCO);//enthalphy change at 298K in Kcal//
printf('Enthalpy change for the reduction of Fe2O3 by Co at 298K=%fKcal',dH298);
