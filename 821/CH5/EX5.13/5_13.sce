CvCO2=1.331;//Mean molar capacity of CO2 in Kcal per deg//
CvC=6.714*10^-3;//Mean molar capacity of C in Kcal per deg//
CvO2=-77.09*10^-7;//Mean molar capacity of O2 in Kcal per deg//
T1=300;//Initial Temperature in kelvin//
T2=400;//final temperature in Kelvin//
dHf400=-94.06;//Enthalpy change in the formation of CO2 at 400k in Kcal//
dHf300=dHf400-((CvCO2*(T2-T1))-(0.5*CvC*(T2^2-T1^2))-(0.33*CvO2*(37*10^6)))*10^-3;//Enthropy of formation of CO2 at 300K in Kcal//
printf('\nEnthropy of formation of CO2 at 300K=%fKcal',dHf300);//in textbook the answer is not having negative answer//
