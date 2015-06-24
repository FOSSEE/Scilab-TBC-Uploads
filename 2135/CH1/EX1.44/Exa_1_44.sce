//Exa 1.44
clc;
clear;
close;
format('v',7);

//Given Data :
mN2=4;//Kg
mO2=2.4;//Kg
mCO2=1.6;//Kg
MO2=32;
MN2=28;
MCO2=44;
Gamma=1.4;
//Rdash=Cpdash*(1-1/Gamma)
Rdash=8.3143;//J/KgK
Cpdash=Rdash*Gamma/(Gamma-1);//KJ/KgmolK
Cvdash=Cpdash/Gamma;//KJ/KgmolK
CpO2=Cpdash/MO2;//KJ/KgmolK
CpN2=Cpdash/MN2;//KJ/KgmolK
CpCO2=Cpdash/MCO2;//KJ/KgmolK
CvO2=Cvdash/MO2;//KJ/Kg
CvN2=Cvdash/MN2;//KJ/Kg
CvCO2=Cvdash/MCO2;//KJ/Kg
disp("Specific heat of gases : ");
disp("For N2, Cp is "+string(CpN2)+" KJ/Kg & Cv is "+string(CvN2)+" KJ/Kg.");
disp("For O2, Cp is "+string(CpO2)+" KJ/Kg & Cv is "+string(CvO2)+" KJ/Kg.");
disp("For CO2, Cp is "+string(CpCO2)+" KJ/Kg & Cv is "+string(CvCO2)+" KJ/Kg.");
Cp=(mO2*CpO2+mN2*CpN2+mCO2*CpCO2)/(mO2+mN2+mCO2);//KJ/KgK
disp(Cp,"Specific heat of mixture, Cp in KJ/KgK : ");
Cv=(mO2*CvO2+mN2*CvN2+mCO2*CvCO2)/(mO2+mN2+mCO2);//KJ/KgK
disp(Cv,"Specific heat of mixture, Cv in KJ/KgK : ");
