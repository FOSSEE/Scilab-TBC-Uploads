// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-12,Example 6,Page 443
//Title: Dew pressure and liquid composition
//================================================================================================================
clear 
clc

//INPUT
//For convenience ethane is taken as 1 and propane is taken as 2
y1=0.3;//mole fraction of ethane in the vapour phase (no unit)
T=30;//temperature in degree celsius

//CALCULATION
//An assumption for the total Pressure is taken and the K factors are read from Fig.12.6. Using the K factor value, the value of x1 and x2 are computed.If x1 and x2 add up to 1, the assumption of total pressure is correct. Otherwise, the pressure is suitably adjusted
y2=1-y1;//calculation of the mole fraction of propane in the vapour phase (no unit)
P_guess=1;//assuming the value of pressure in MPa to compute the K factors 
K1=3.4;//K factor taken from Fig.(12.6) corresponding to T and P_guess (no unit)
K2=1.1;//K factor taken from Fig.(12.6) corresponding to T and P_guess (no unit)
x1_calc=y1/K1;//calculation of the mole fraction of ethane in the liquid phase (no unit)
x2_calc=y2/K2;//calculation of the mole fraction of propane in the liquid phase (no unit)
tot=x1_calc+x2_calc;//checking if x1 and x2 add upto 1
if tot==1 then
    P=P_guess;//if the total of x1 and x2 sum up to 1, then the assumed pressure is the Dew pressure (in MPa)
   x1=x1_calc;//if the total of x1 and x2 sum up to 1, then the calculated value of x1 is the correct liquid composition of ethane (no unit)
   x2=x2_calc;//if the total of x1 and x2 sum up to 1, then the calculated value of x2 is the correct liquid composition of propane (no unit)
else
    P=1.5;//assuming a higher value of P in MPa to compute the K factors from Fig.(12.6), as in this case, the sum total of x1 and x2 are less than 1
    K1=2.4;//K factor taken from Fig.(12.6) corresponding to T and P (no unit)
    K2=0.8;//K factor taken from Fig.(12.6) corresponding to T and P (no unit)
    x1=y1/K1;//calculation of the mole fraction of ethane in the liquid phase (no unit)
    x2=y2/K2;//calculation of the mole fraction of propane in the liquid phase (no unit)
end

//OUTPUT
mprintf('The Dew pressure and the liquid composition of a binary vapour mixture of ethane and propane was found to be P=%0.2f MPa\t x1=%0.3f\t x2=%0.3f \t',P,x1,x2);

//===============================================END OF PROGRAM===================================================
