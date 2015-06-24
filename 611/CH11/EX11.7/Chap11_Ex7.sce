// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-11,Example 7,Page 397
//Title:Activity coefficients
//================================================================================================================
clear 
clc

//INPUT
//For convenience, nitromethane is taken as 1 and carbon tetrachloride as 2
T=45;//temperature of the mixture in degree celsius
A=2.230;//van laar constant for the system at T (no unit)
B=1.959;//van laar constant for the system at T (no unit)
n1=30;//mole percentage of nitromethane in the mixture ( in percentage)

//CALCULATION
n2=100-n1;//calculation of mole percentage of carbon tetrachloride in the mixture (in percentage)
x1=n1/100;//calculation of mole fraction of nitromethane in the mixture (no unit)
x2=1-x1;//calculation of mole fraction of carbon tetrachloride in the mixture(no unit)
gaamma1=exp (A/(1+((A/B)*(x1/x2)))^2);//calculation of activity coefficient using Eq.(11.82) (no unit)
gaamma2=exp (B/(1+((B/A)*(x2/x1)))^2);//calculation of activity coefficient using Eq.(11.83) (no unit)

//OUTPUT
mprintf('The activity coefficients for the system using van laar equation is : gamma1=%f \t gamma2=%f \t\n ', gaamma1,gaamma2);

//===============================================END OF PROGRAM===================================================
