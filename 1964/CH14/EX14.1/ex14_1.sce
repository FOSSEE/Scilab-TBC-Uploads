//Chapter-14, Example 14.1, Page 456
//=============================================================================
clc
clear
//INPUT DATA
CMRR=10^5;//common-mode rejection ratio
Ad=10^5;//differential gain
//CALCULATIONS
Acm=Ad/(CMRR);//common mode gain
mprintf("common-mode gain is %d",Acm);
//=================================END OF PROGRAM=======================================================================================================
