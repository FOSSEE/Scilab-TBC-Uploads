//Kunii D., Levenspiel O., 1991. Fluidization Engineering(II Edition). Butterworth-Heinemann, MA, pp 491

//Chapter-16, Example 3, Page 413
//Title: Multistage Adsorber
//==========================================================================================================

clear
clc

//INPUT
T=20;//Temeprature in degree C
M=0.018;//Molecular weight of water in kg/mol
Q=10;//Flow rate of dry air in m^3/s
R=82.06E-6;//Universal gas constant
pi=0.0001;//Initial moisture content in atm
pj=0.01;//Final moisture content in atm

//CALCULATION
a=Q*(273+T)/273;//Term At*uo
b=a*M/(R*(T+273));//Term C*At*uo
//The value of slope can be found only by graphical mehtod. Hence it has been taken directly from the book(Page no.414,Fig.E3)
m=10.2;
Fo=b/m;//Flow rate of solids
Q3=(b/Fo)*(pj-pi);//Moisture content of leaving solids

//OUTPUT
printf('\nMoisture content of leaving solids:%f kg H2O/kg dry solids',Q3);

//====================================END OF PROGRAM ======================================================