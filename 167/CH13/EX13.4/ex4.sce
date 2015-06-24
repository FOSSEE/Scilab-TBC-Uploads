//example 4
//Exergy Destruction during Mixing of Ideal Gases
clear
clc
disp('We take the entire contents of the tank as the system. This is a closed system since no mass crosses the boundary during the process. We note that the volume of a rigid tank is constant, and there is no energy transfer as heat or work.')
NO2=3 //No.of kmol of O2
NCO2=5 //No. of kmol of CO2
Nm=NO2+NCO2 //total moles of the mixture
yO2=NO2/Nm //mole fraction of O2
yCO2=NCO2/Nm //mole fraction of CO2
Ru=8.314 //Universal Gas Constant in kJ/kmol-K
dSm=-Ru*(NO2*log(yO2)+NCO2*log(yCO2)) //Entropy change in kJ/K
To=298 //Temp. of surroundings in kelvins
X=To*dSm //energy destuction in the process in kJ
printf("\n Hence, the exergy destruction in the process is = %.1f MJ. \n",X/10^3);