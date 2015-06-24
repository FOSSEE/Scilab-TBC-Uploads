//Chapter-2, Example 2.29, Page 2.52
//=============================================================================
clc
clear

//INPUT DATA
Resistance=3;//% Resistance drop
Reactance=6;//% Reactance drop

//CALCULATIONS
q=atand(Reactance/Resistance);//Phase angle in degree
cosq=cosd(q);//Power factor
Regulation=((Resistance*cosq)+(Reactance*sind(q)));//% Regulation at the power factor

//OUTPUT
mprintf('Power factor is %3.2f \nPercentage regulation at this power factor is %3.1f percent',cosq,Regulation)

//=================================END OF PROGRAM==============================
