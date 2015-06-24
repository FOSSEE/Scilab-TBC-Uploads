//Chapter-6, Illustration 1, Page 308
//Title: Refrigeration cycles
//=============================================================================
clc
clear

//INPUT DATA
COP=8.5;//Co-efficient of performance
T1=300;//Room temperature in K
T2=267;//Refrigeration temperature in K

//CALCULATIONS
COPmax=T2/(T1-T2);//Maximum COP possible

//OUTPUT
mprintf('Maximum COP possible is %3.2f \n Since the COP claimed by the inventor is more than the maximum possible COP his claim is not correct',COPmax)



//==============================END OF PROGRAM=================================
