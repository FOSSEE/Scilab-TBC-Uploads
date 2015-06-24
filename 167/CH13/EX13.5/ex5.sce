//example 5
//cooling of non ideal gas mixture
clear
clc
disp('We take the cooling section as the system. This is a control volume since mass crosses the system boundary during the process.The critical properties ')
TcrN2= 126.2 //Critical Pressure of N2in K 
PcrN2=3.39 //Critical Pressure of N2 in MPa 
TcrO2=154.8 //Critical Temp. of O2 in K 
PcrO2=5.08 //Critical Pressure of O2 in MPa 
yN2=0.79 //mole fraction of nitrogen
yO2=0.21 //mole fraction of O2
T1=220 //Initial Temp. of air in kelvins
T2=160//Final Temp. of air in kelvins
Pm=10 //PRessure in MPa
Ru=8.314 //Universal Gas constant in kJ/kmol-K
disp('calculating heat transfer per kmol of air using ideal gas approximation')
h1N2=6391 //Enthalpy of N2 at T1 in kJ/kmol
h1O2=6404 //Enthalpy of O2 at T1 in kJ/kmol
h2O2=4657 //Enthalpy of O2 at T2 in kJ/kmol
h2N2=4648 //Enthalpy of N2 at T2 in kJ/kmol
qout=yN2*(h1N2-h2N2)+yO2*(h1O2-h2O2) //Heat Transfer in kJ/kmol
printf("\n Hence, the heat transfer during the process using the ideal gas approximation is = %.0f kJ/kmol. \n",qout);
disp('calculating heat transfer per kmol of air using Kays law')
Tcrm2=yN2*TcrN2+yO2*TcrO2 //critical temp. of pseudopure substance
Pcrm2=yN2*PcrN2+yO2*PcrO2 //critical pressure of pseudopure substance
Tr1=T1/Tcrm2 //Reduced Temp. at T1
Tr2=T2/Tcrm2 //Reduced Temp. at T2
Zh1m=1.0 //Compresibility factor at T1
Zh2m=2.6 //Compressibility Factor at T2
Pr=Pm/Pcrm2 //Reduced Pressure 
h1m=yN2*h1N2+yO2*h1O2 //Enthalpy of the mixture at T1 in kJ/kmol
h2m=yN2*h2N2+yO2*h2O2 //Enthalpy of the mixture at T2 in kJ/kmol
qout=(h1m-h2m)-Ru*Tcrm2*(Zh1m-Zh2m)//Heat transfer during the process in kJ/kmol
printf("\n Hence, the heat transfer during the process using Kays law is = %.0f kJ/kmol. \n",qout);
disp('calculating heat transfer per kmol of air using Amagats law')
Zh1N2=0.9 //Compressibility factor of N2 at T1
Zh2N2=2.4 //Compressibility factor of N2 at T2
Zh1O2=1.3 //Compressibility factor of O2 at T1
Zh2O2=4.0 //Compressibility factor of O2 at T2
dhN2=(h1N2-h2N2)-Ru*TcrN2*(Zh1N2-Zh2N2) //Enthalpy change for N2 in kJ/kmol
dhO2=(h1O2-h2O2)-Ru*TcrO2*(Zh1O2-Zh2O2) //Enthaloy change for O2 in kJ/kmol
qout=yN2*dhN2+yO2*dhO2 //kJ/mol //heat transfer during the process in kJ/kmol
printf("\n Hence, the heat transfer during the process using Amagats law is = %.0f kJ/kmol. \n",qout);