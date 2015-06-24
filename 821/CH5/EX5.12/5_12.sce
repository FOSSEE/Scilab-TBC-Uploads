CvH2=6.95*10^-3;//Mean molar capacity of H2 in Kcal per deg//
CvO2=6.97*10^-3;//Mean molar capacity of O2 in Kcal per deg//
CvH2O=8.7*10^-3;//Mean molar capacity of H2O in Kcal per deg//
dCv=CvH2O-CvH2-0.5*CvO2;//Net mean molar capapcity in Kcal per deg//
printf('Net mean molar capacity=dCv=%fKcal per deg',dCv);
dHf=-57.8;//Standard heat of formation of water vapour in Kcal//
dHf373=dHf+(dCv*(373-298));//Heat of formation of water vapour at 373K in Kcal//
printf('\nHeat of formation of water vapour at 373K=%fKcal',dHf373);//here the answer is written wrong in textbook the correct answer is given here//
