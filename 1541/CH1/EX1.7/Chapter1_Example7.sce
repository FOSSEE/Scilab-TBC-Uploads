//Chapter-1, Example 1.7, Page 1.18
//=============================================================================
clc
clear

//INPUT DATA
Eg1=250;//Existing generated emf in V
N1=800;//Existed rated speed in rpm
q1=0.03;//Existing flux in Wb
Eg2=300;//New generated emf in V
N2=1000;//New rated speed in rpm

//CALCULATIONS
q2=(q1*N1*Eg2)/(Eg1*N2);//New flux per pole in Wb

//OUTPUT
mprintf('New flux per pole is %3.4f Wb',q2)

//=================================END OF PROGRAM==============================
