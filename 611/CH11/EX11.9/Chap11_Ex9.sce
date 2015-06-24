// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-11,Example 9,Page 399
//Title: Activity coefficients using the Wilson's parameters
//================================================================================================================
clear 
clc

//INPUT
//For convenience, nitromethane is taken as 1 and carbon tetrachloride as 2
T=45;//temperature of the system in degree celsius
A_12=0.1156;//Wilson's parameter for the system at T (no unit)
A_21=0.2879;//Wilson's parameter for the system at T (no unit)
x1=0.3;//mole fraction of nitromethane in the liquid mixture (no unit)

//CALCULATION
x2=1-x1;//calculation of the mole fraction of carbon tetrachloride in the liquid mixture (no unit)
ln_gaamma1=-log(x1+(A_12*x2))+(x2*((A_12/(x1+(A_12*x2)))-(A_21/((A_21*x1)+x2))));//calculation of ln(activity coefficient) using Eq.(11.89) (no unit)
gaamma1=exp(ln_gaamma1);//calculation of activity coefficient (no unit)
ln_gaamma2=-log(x2+(A_21*x1))-(x1*((A_12/(x1+(A_12*x2)))-(A_21/((A_21*x1)+x2))));//calculation of ln(activity coefficient) using Eq.(11.90) (no unit)
gaamma2=exp(ln_gaamma2);//calculation of activity coefficient (no unit)

//OUTPUT

mprintf('The activity coefficients for the system using Wilsons parameters are : gamma1=%f \t gamma2=%f \t\n ', gaamma1,gaamma2);

//===============================================END OF PROGRAM===================================================


