//Chapter-10, Example 10.5, Page 411
//=============================================================================
clc
clear

//INPUT DATA
A51=2;//Ratio of areas A5 and A1
A21=1;//Ratio of areas A2 and A1
F56=0.15;//Shape factor
F53=0.11;//Shape factor
F26=0.24;//Shape Factor
F23=0.2;//Shape Factor

//CALCULATIONS
F14=(A51*(F56-F53))-(A21*(F26-F23));//Shape factor

//OUTPUT
mprintf('Shape factor F14 is %3.2f',F14)

//=================================END OF PROGRAM==============================
