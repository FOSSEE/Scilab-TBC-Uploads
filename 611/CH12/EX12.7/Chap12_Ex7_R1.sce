// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-12,Example 7,Page 443
//Title: Bubble temperature and vapour composition
//================================================================================================================
clear 
clc

//INPUT
//For convenience ethane is taken as 1 and propane is taken as 2
x1=0.4;//mole fraction of ethane in the liquid phase (no unit)
P=1.5;//pressure in MPa

//CALCULATION
//An assumption for the temperature is taken and the K factors are read from Fig.12.6. Using the K factor value, the value of y1 and y2 are computed.If y1 and y2 add up to 1, the assumption of the temperature is correct. Otherwise, the temperature is suitably adjusted
x2=1-x1;//calculation of the mole fraction of propane in the liquid phase (no unit)
t_guess=10;//assuming the value of temperature in degree celsius to compute the K factors 
K1=1.8;//K factor taken from Fig.(12.6) corresponding to t_guess and P (no unit)
K2=0.5;//K factor taken from Fig.(12.6) corresponding to t_guess and P (no unit)
y1_calc=K1*x1;//calculation of the mole fraction of ethane in the vapour phase (no unit)
y2_calc=K2*x2;//calculation of the mole fraction of propane in the vapour phase (no unit)
tot=y1_calc+y2_calc;//checking if y1 and y2 add upto 1
if tot==1 then
    t=t_guess;//if the total of y1 and y2 sum up to 1, then the assumed temperature is the bubble temperature (in degree celsius)
   y1=y1_calc;//if the total of y1 and y2 sum up to 1, then the calculated value of y1 is the correct vapour composition of ethane (no unit)
   y2=y2_calc;//if the total of y1 and y2 sum up to 1, then the calculated value of y2 is the correct vapour composition of propane (no unit)
else
    t=9;//assuming a lower value of t in degree celsius to compute the K factors from Fig.(12.6), as in this case, the sum total of y1 and y2 are greater than 1
    K1=1.75;//K factor taken from Fig.(12.6) corresponding to t and P (no unit)
    K2=0.5;//K factor taken from Fig.(12.6) corresponding to t and P (no unit)
    y1=K1*x1;//calculation of the mole fraction of ethane in the vapour (no unit)
    y2=K2*x2;//calculation of the mole fraction of propane in the vapour phase (no unit)
end

//OUTPUT
mprintf('The bubble temperature and the vapour composition of a binary vapour mixture of ethane and propane was found to be t=%d degree celsius\n y1=%f\t y2=%f\t',t,y1,y2);

//===============================================END OF PROGRAM===================================================
