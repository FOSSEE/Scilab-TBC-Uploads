//Chapter-6, Illustration 12, Page 318
//Title: Refrigeration cycles
//=============================================================================
clc
clear

//INPUT DATA
P1=1;//Pressure at point 1 in bar
T1=268;//Temperature at point 1 in K
P2=5;//Pressure at point 2 in bar
T3=288;//Temperature at point 3 in K
n=1.3;//Adiabatic gas constant
Cp=1.005;//Specific heat at constant pressure in kJ/kg-K

//CALCULATIONS
x=(n-1)/n;//Ratio
T2=((P2/P1)^x)*T1;//Temperature at point 2 in K
T4=((P1/P2)^x)*T3;//Temperature at point 4 in K
W=Cp*(T3-T4);//Work developed per kg of air in kJ/kg
Re=Cp*(T1-T4);//Refrigerating effect per kg of air in kJ/kg
Wnet=Cp*((T2-T1)-(T3-T4));//Net work output in kJ/kg
COP=Re/Wnet;//Co-efficient of performance

//OUTPUT
mprintf('Work developed per kg of air is %3.3f kJ/kg \n Refrigerating effect per kg of air is %3.3f kJ/kg \n COP of the cycle is %3.2f',W,Re,COP)





//==============================END OF PROGRAM=================================
