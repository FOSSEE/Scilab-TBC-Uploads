//Chapter-2, Illustration 9, Page 65
//Title: Gas Power Cycles
//=============================================================================
clc
clear

//INPUT DATA
e=7.5;//Expansion ratio
c=15;//Compression ratio
P1=98;//Pressure at point 1 in kN/(m^2)
P4=258;//Pressure at point 4 in kN/(m^2)
T1=317;//Temperature at point 1 in K
y=1.4;//Ratio of specific heats

//CALCULATIONS
T4=T1*(P4/P1);//Temperature at point 4 in K
T3=T4*(e^(y-1));//Temperature at point 3 in K
t3=T3-273;//Temperature at point 3 in oC
T2=T1*(c^(y-1));//Temperature at point 2 in K
n=(1-((T4-T1)/(y*(T3-T2))))*100;//Thermal efficiency

//OUTPUT
mprintf('Maximum temperature attained during the cycle is %3.1f oC \n Thermal efficiency of the cycle is %3.1f percent',t3,n)






//==============================END OF PROGRAM=================================
