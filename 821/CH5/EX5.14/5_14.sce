dHfNH3=-11.04;//Standard heat of formation of NH3 in kcal//
dHfH2O=-57.80;//Standard heat of formation of H2O in kcal//
dHfNO=21.60;//Standard heat of formation of NO in kcal//
dHfO2=0;//Standard heat of formation of O2 in Kcal//
dH=4*dHfNO+6*dHfH2O-4*dHfNH3-5*dHfO2;//Enthalpy change for the oxidation of NH3//
printf('Enthalpy change for the oxidation of NH3 at 298K=%fKcal',dH);
