dHfZnSO4l=-36.43;//Standard heat of formation of ZnSO4 in kcal//
dHfH2SO4l=-193.91;//Standard heat of formation of H2SO4 in kcal//
dHfZnSO4aq=-19.45;//Heats of Dilution of ZnSO4 in kcal//
dHfH2SO4aq=-22.99;//Heats of Dilution of H2SO4 in kcal//
dH=dHfZnSO4l+dHfH2SO4l+dHfH2SO4aq;
dHf298=dH-dHfZnSO4aq;//Standarad enthalphy of formation of ZnSO4 at 298K in Kcal//
printf('Standard enthalpy of formation of ZnSO4 at 298K=%fKcal',dHf298);
