// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-11,Example 8,Page 397
//Title:van Laar constants and Activity coefficients
//================================================================================================================
clear 
clc

//INPUT
//For convenience, ethanol is taken as 1 and benzene as 2
n_azeo=44.8;//azeotropic composition given as mole percentage
Tb=68.24;//boiling point of mixture in degree celsius
P=760;//pressure in Torr
P1_s=506;//saturation pressure of ethanol at Tb in Torr
P2_s=517;//saturation pressure of benzene at Tb in Torr
n1=10;//mole percentage of ethanol in the mixture (in percentage)

//CALCULATION
//At azeotropic composition, y_i=x_i, therefore gaamma_i=P/Pi_s
x1=n_azeo/100;//calculation of the mole fraction of ethanol (azeotropic composition) (no unit)
x2=1-x1;//calculation of the mole fraction of benzene (azeotropic composition) (no unit)
gaamma1=P/P1_s;//calculation of the activity coefficient at the azeotropic composition (no unit)
gaamma2=P/P2_s;//calculation of the activity coefficient at the azeotropic composition (no unit)
A=log(gaamma1)*(1+((x2*log(gaamma2))/(x1*log(gaamma1))))^2;//calculation of the van Laar constant using Eq.(11.84) (no unit)
B=log(gaamma2)*(1+((x1*log(gaamma1))/(x2*log(gaamma2))))^2;//calculation of the van Laar constant using Eq.(11.85) (no unit)
x1=n1/100;//calculation of the mole fraction of ethanol (no unit)
x2=1-x1;//calculation of the mole fraction of benzene (no unit)
gaamma1=exp (A/(1+((A/B)*(x1/x2)))^2);//calculation of activity coefficient at the given composition using Eq.(11.82) (no unit)
gaamma2=exp (B/(1+((B/A)*(x2/x1)))^2);//calculation of activity coefficient at the given composition using Eq.(11.83) (no unit)


//OUTPUT
mprintf('The van Laar constants for the system are : A=%f \t B=%f \n',A,B)
mprintf('The activity coefficients for the system using van laar equation are : gamma1=%f \t gamma2=%f \t\n ', gaamma1,gaamma2);

//===============================================END OF PROGRAM===================================================

 
