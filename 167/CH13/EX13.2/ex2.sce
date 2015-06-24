//example 2
//P-v-T Behavior of Nonideal Gas Mixtures
clear
clc
NN2=2 //No.of kmol of N2
NCO2=6 //No. of kmol of CO2
Nm=8 // total no. of kmol of mixture
Ru=8.314 //Universal gas constant in kPa-m^3/kmol-K
Tm=300//Temp. of mixture in K
Pm=15000 //Pressure of mixture in kPa
Vm=Nm*Ru*Tm/Pm //volume of tank on the basis of ideal gas equation in m^3
printf("\n Hence, the volume of the mixture on the basis of ideal gas equation of state is = %.3f m^3. \n",Vm);
disp('Now,estimating volume of tank on the basis of Kays rule')
yN2=NN2/Nm//mole fraction of nitrogen
yCO2=NCO2/Nm //mole fraction of CO2
TcrN2=126.2 // critical temop. of N2 in Kelvins
TcrCO2=304.2 //critical temp. of CO2 in kelvins
Tcrm=yN2*TcrN2+yCO2*TcrCO2 //pseudo critical temp. of mixture in Kelvins
PcrN2=3.39 //critical pressure of N2 in MPa
PcrCO2=7.39 //critical pressure in MPa
Pcrm=yN2*PcrN2+yCO2*PcrCO2 //pseodo critical pressure of mixture in MPa
Tm=300 //actual critical temp. of mixture in kelvins
Pm=15 //actual critical pressure of mixture in MPa
Tr=Tm/Tcrm //Reduced Temp. of mixture
Pr=Pm/Pcrm //Reduced pressure of mixture
Zm1=Tr/Pr //compressibility of the mixture
Vm1=Zm1*Vm//volume of tank on the basis of Kays rule in m^3
printf("\n Hence, the volume of the mixture on the basis of Kays rule is = %.3f m^3. \n",Vm1);
disp('Now, estimating volume of tank on the basis of compressibility factors and Amagats law')
TrN2=Tm/TcrN2 //Reduced Temp. of N2
PrN2=Pm/PcrN2 //Reduced Pressure of N2
ZN2=1.02 //compressibility factor of N2
TrCO2=Tm/TcrCO2 //Reduced Temperature of CO2
PrCO2=Pm/PcrCO2 //Reduced pressure of CO2
ZCO2=0.30 //compressibility factor of CO2
Zm2=ZN2*yN2+ZCO2*yCO2 //compressibility factor of the mixture
Vm2=Zm2*Vm //volume of the mixture in m^3
printf("\n Hence, the volume of the mixture on the basis of compressibility factors and Amagats law is = %.3f m^3. \n",Vm2);
disp('Now, estimating volume of tank on the basis of compressibility factors and daltons law')
VrN2=(Vm/NN2)/(Ru*TcrN2/(PcrN2*1000))
VrCO2=(Vm/NCO2)/(Ru*TcrCO2/(PcrCO2*1000))
ZN2=0.99 //compressibility factor of N2
ZCO2=0.56 //compressibility factor of CO2
Zm3=yN2*ZN2+yCO2*ZCO2 //compressibility factor of the mixture
Vm3=Zm3*Vm //volume of the mixture in m^3
disp('This is 33 percent lower than the assumed value. Therefore, we should repeat the calculations, using the new value of Vm. When the calculations are repeated we obtain 0.738 m^3 after the second iteration, 0.678 m^3 after the third iteration, and 0.648 m^3 after the fourth iteration. This value does not change with more iterations. Therefore')
Vm=0.648 //volume of the mixture in m^3
printf("\n Hence, the volume of the mixture on the basis of compressibility factors and Daltons law is = %.3f m^3. \n",Vm);