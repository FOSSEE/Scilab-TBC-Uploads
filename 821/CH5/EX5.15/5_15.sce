T=773;//temperature in kelvin//
dH298=-216240;//Enthalpy change for the oxidation of NH3 in cal//
CvO2=6.148+T*3.102*10^-3-(T^2)*9.23*10^-7;//heat capacity of O2 in cal deg^-1 mol^-1//
CvH2O=7.219+T*2.374*10^-3+(T^2)*2.67*10^-7;//Heat capacity of H2O in cal deg^-1 mol^-1//
CvNO=6.50+T*1*10^-3;//Heat capacity of NO in cal per deg per mol//
CvNH3=6.189+T*7.887*10^-3-(T^2)*7.28*10^-7;//Heat capacity of H2O in cal deg^-1 mol^-1//
dCv=4*CvNO+6*CvH2O-4*CvNH3-5*CvO2;//Heat capacity change for oxidation//
da=13.818;
db=-28.814*10^-3;
dc=91.29*10^-7;
T1=298;//temperature in kelvin//
dH773=dH298+(T-T1)*da+(T^2-T1^2)*0.5*db+(T^3-T1^3)*0.33*dc;//Enthalpy change for the oxidation of NH3 at 773k in cal//
printf('\nEnthalpy change for the oxidation of NH3 at 773K=%fcal=-215.69Kcal',dH773);//here the answer is slightly different//
