// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-5,Example 2,Page 161
//Title: Inventor and the heat engine
//================================================================================================================
clear 
clc

//INPUT
Q=1000;//amount of energy absorbed by the heat engine in kJ/s
W=650;//work delivered by the heat engine in kW
T_source=500;//temperature of the source in degree celsius
T_sink=25;//temperature of the sink in degree celsius

//CALCULATION
n_claimed=W/Q;//calculation of the efficiency of the heat engine invented by the inventor (no unit)
T1=T_source+273.15;//conversion of source temperature in K
T2=T_sink+273.15;//conversion of sink temperature in K
n_carnot=1-(T2/T1);//calculation of the efficiency of a carnot engine from Eg.(5.1) (no unit)

//OUTPUT
mprintf("\n The efficiency of the Carnot engine=%0.3f \n",n_carnot);
mprintf("\n The efficiency of the engine claimed by the inventor=%0.2f \n",n_claimed);
if n_claimed<n_carnot then
    mprintf("\n The claimed heat engine is theoretically feasible as the efficiency of the engine is lesser than that of a Carnot engine\n");
else
    mprintf("\n The claimed heat engine is not theoretically feasible as the efficiency of the engine is greater than that of a Carnot engine\n");
end

//===============================================END OF PROGRAM===================================================
