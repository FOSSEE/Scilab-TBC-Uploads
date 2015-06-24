//Chapter-6, Illustration 13, Page 319
//Title: Refrigeration cycles
//=============================================================================
clc
clear

//INPUT DATA
T1=277;//Temperature at point 1 in K
T3=328;//Temperature at point 3 in K
P1=0.1;//Pressure at point 1 in MPa
P2=0.3;//Pressure at point 2 in MPa
nc=0.72;//Isentropic efficiency of compressor
nt=0.78;//Isentropic efficiency of turbine
y=1.4;//Adiabatic gas constant
Cp=1.005;//Specific heat at constant pressure in kJ/kg-K
m=3;//Cooling load in tonnes

//CALCULATIONS
x=(y-1)/y;//Ratio
T2s=T1*((P2/P1)^x);//Temperature at point 2s in K
T2=((T2s-T1)/nc)+T1;//Temerature at point 2 in K
T4s=T3*((P1/P2)^x);//Temperature at point 4s in K
T4=T3-((T3-T4s)*nt);//Temperature at point 4 in K
Re=Cp*(T1-T4);//Refrigerating effect in kJ/kg
Wnet=Cp*((T2-T1)-(T3-T4));//Net work output in kJ/kg
COP=Re/Wnet;//Co-efficient of performance
P=(m*3.52)/COP;//Driving power required in kW
ma=(m*3.52)/Re;//Mass flow rate of air in kg/s

//OUTPUT
mprintf('COP of refrigerator is %3.2f \n Driving power required is %3.0f kW \n Mass flow rate of air is %3.3f kg/s',COP,P,ma)




//==============================END OF PROGRAM=================================
