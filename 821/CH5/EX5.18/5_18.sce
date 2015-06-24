dH=-57800;//Enthalpy change in cal//
R=1.99;//universal gas constant//
T=298;//temperture in kelvin//
dn=-0.5;//change in no. of moles//
dU=dH-(R*T*dn);//heat of combustion in cal//
printf('The air used contains 2 mol of N2.\ndU=-57500cal.');
CpN2=8.3;//Cp value of N2//
CpH2O=11.3;//Cp value of H2O//
CvN2=CpN2-R;//Cv value of N2//
CvH2O=CpH2O-R;//Cv value of H2O//
printf('\nCv value of N2=CvN2=%fKcal deg^-1 mol^-1',CvN2);
printf('\nCv value of H2O=CvH2O=%fKcal deg^-1 mol^-1',CvH2O);
printf('\nSolving integration we get T2=2940K.The maximum pressure can be calculated from PV=nRT equation.');
P1=1;//initial pressure in atm//
n1=3.5;
n2=3;
T2=2940;//final temperature in Kelvin//
P2=(P1*n2*T2)/(n1*T);//maximum pressure in atm//
printf('\nMaximum pressure of the reaction=P2=%fatm',P2);
