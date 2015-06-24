// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-5,Example 8,Page 172
//Title: Entropy change
//================================================================================================================
clear 
clc

//INPUT
P=0.101325;//pressure in the piston cylinder assembly in MPa
T1=300;//temperature of the piston cylinder assembly in K
T2=400;//final temperature of the piston cylinder assembly in K
a=45.369;//coefficients to compute isobaric molar heat capacity of CO2(g) in J/molK
b=8.688*10^-3;//coefficients to compute isobaric molar heat capacity of CO2(g) in J/molK
e=-9.619*10^5;//coefficients to compute isobaric molar heat capacity of CO2(g) in J/molK
//Cpo for CO2(g) is given as a+bT+eT^-2

//CALCULATION

del_S=(a*log(T2/T1))+(b*(T2-T1))-((e/2)*((1/T2^2)-(1/T1^2)));//calculation of entropy change for the constant pressure expansion in J/molK

//OUTPUT
mprintf("\n The change in entropy of CO2=%f J/molK\n",del_S);


//===============================================END OF PROGRAM===================================================
//DISCLAIMER: THE AUTHOR HAS NOT DIVIDED 'e' IN THE INTEGRATED EXPRESSION USED TO COMPUTE del_S BY 2, WHICH IS AN ERROR.THE INTEGRATION OF (eT^-3)dT IS -(e/2)*T^-2 THIS ERROR HAS BEEN RECTIFIED IN THIS PROGRAM.
