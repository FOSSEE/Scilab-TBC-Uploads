//Effect of air cleaner
clc,clear
//Given:
A_F=14 //Air fuel ratio at sea level
P2=0.834 //Pressure at venturi throat without an air cleaner in bar
P1=1.013 //Pressure of air in bar at sea level
deltaP_ac=30 //Pressure drop to air cleaner in mm of mercury
m_a=250 //Air flow in kg/hr
//Solution:
//No air cleaner
deltaP_a1=P1-P2 //Pressure difference at venturi throat in bar
//When air cleaner is fitted
deltaP_ac=deltaP_ac/750 //Pressure drop to air cleaner in bar
p=poly(0,'p') //Defining pressure at venturi throat with an air cleaner as unknown in bar
deltaP_a2=P1-deltaP_ac-p //Pressure difference at venturi throat in bar
//For same air flow and constant coefficients pressure difference in above two cases is same
p=roots(deltaP_a2-deltaP_a1) //Pressure at venturi throat with an air cleaner in bar
deltaP_f=P1-p //Pressure difference at venturi throat when air cleaner is fitted in bar
A_F_f=A_F*sqrt(deltaP_a1/deltaP_f) //Air fuel ratio when air cleaner is fitted
//Results:
printf("\n (a)The throat pressure when the air cleaner is fitted, P = %.3f bar",p)
printf("\n (b)Air fuel ratio with air cleaner is fitted = %.2f\n\n",A_F_f)
