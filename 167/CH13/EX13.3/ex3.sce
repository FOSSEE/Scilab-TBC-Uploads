//example 3
//Mixing Two Ideal Gases in a Tank
clear
clc
disp('We assume both gases to be ideal gases, and their mixtureto be an ideal-gas mixture. This assumption is reasonable since both the oxygen and nitrogen are well above their critical temperatures and well below their critical pressures.')
CvN2=0.743 //Constant-Volume Specific heat of N2 in kJ/kg-K
CvO2=0.658 //Constant-Volume Specific heat of O2 in kJ/kg-K 
disp('This is a closed system since no mass crosses the boundary during the process. We note that the volume of a rigid tank is constant and thus,there is no boundary work done. ')
T1N2=20 // Temperature of N2 in celsius
T1O2=40 // Temperature of O2 in celsius
mN2=4 //mass of N2 in kg
mO2=7 //mass of O2 in kg
Tm=(mN2*CvN2*T1N2+mO2*CvO2*T1O2)/(mN2*CvN2+mO2*CvO2) //Temp. of mixture in Celsius
printf("\n Hence, the temp. of the mixture is = %.1f C. \n",Tm)
NO2=mO2/32 //No. of kmol of O2
NN2=mN2/28 //No. of kmol of N2
Nm=NO2+NN2 //Total No. of kmol of mixture
Ru=8.314 //Universal Gas Constant in kPa-m^3/kmol-K
P1O2=100 //Initial Pressure of O2 in kPa
P1N2=150 //Initial Pressure of N2 in kPa
VO2=NO2*Ru*(T1O2+273)/P1O2//Initial volume of O2 in m^3
VN2=NN2*Ru*(273+T1N2)/P1N2 //Initial volume of N2 in m^3
Vm=VO2+VN2 //total volume of mixture in m^3
Pm=Nm*Ru*(Tm+273)/Vm //Mixture Pressure after equilbrium in kPa
printf("\n Hence, the mixture pressure after equilbrium is = %.1f kPa. \n",Pm)