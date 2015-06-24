//Chapter-1, Example 1.43, Page 51
//=============================================================================
clc;
clear;
//INPUT DATA
R1=10;//resistance R1 in ohms
R2=20;//resistance R2 in ohms
R3=40;//resistance R3 in ohms
//after certain manipulations the resultant network can be evaluated as parallel combinaton of R1,R2,R3
//CALCULATIONS 
RAD=1/((1/R1)+(1/R2)+(1/R3));//resultant resistance in Ohms
//OUTPUT
mprintf("Resultant resitance RAD is %1.3f ohms",RAD);
 //=================================END OF PROGRAM==============================
