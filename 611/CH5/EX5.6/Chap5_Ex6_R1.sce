// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-5,Example 6,Page 169
//Title: Inventor and the claim
//================================================================================================================
clear 
clc

//INPUT
T1=800;//temperature of reservoir 1 in K
T2=400;//temperature of reservoir 2 in K
Q1=1000;//energy absorbed from reservoir maintained at T1 in kJ
Q2=400;//energy absorbed from reservoir maintained at T2 in kJ
W=1000;//work delivered by the heat engine in kJ
T3=300;//temperature of the sink in K

//CALCULATION
Q3=(Q1+Q2)-W;//calculation of the energy rejected to the sink using the first law of thermodynamics in kJ
clausius_inequality=(Q1/T1)+(Q2/T2)-(Q3/T3);//application of the second law of thermodynamics in the form of the Clausius inequality using Eq.(5.28)

//OUTPUT
mprintf("\n The LHS of the Clausius inequality=%0.4f \n",clausius_inequality);
if clausius_inequality<0 | clausius_inequality==0 then
    mprintf("\n The given process does not violate the second law of thermodynamics, therefore the claim is correct\n");
else
    mprintf("\n This is a violation of the second law of thermodynamics, and hence the claim cannot be justified\n");
end

//===============================================END OF PROGRAM===================================================
