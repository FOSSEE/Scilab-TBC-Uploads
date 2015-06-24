//example 11
//second law analysis of isothermal combustion
clear
clc
Pv=3.1698 //Partial pressure of water vapour in kPa
Ptotal=101.325 //Total pressure of products in kPa
x=Pv/Ptotal 
Nv=x*13.28/(1-x) //amount of water vapour in kmol
Qout=1*(-74850)-1*(-393520)-0.43*(-241820)-1.57*(-285830) //Heat transfer per kmol of CH4
Sprod=2845.35 //Total entropy of products in kJ/kmol-K
Sreact=3023.69 //Total entropy of reactants in kJ/kmol-K
Tsurr=298 //Temperature of surroundings in K
Sgen=Sprod-Sreact+Qout/Tsurr //Entropy generation during the process in kJ/kmol-K CH4
To=298 //K
Xdestroyed=To*Sgen //exergy destruction in kJ/kmol CH4
Wrev=Xdestroyed //reversible work associated with the process 
printf("\n The heat transfer per kmol of CH4 is = %.0f kJ/kmol CH4. \n",Qout);
printf("\n The Entropy generation is = %.0f kJ/kmol-K CH4. \n",Sgen);
printf("\n The Exergy destruction is = %.0f MJ/kmol CH4. \n",Xdestroyed/1000);
printf("\n The reversible work is = %.0f MJ/kmol CH4. \n",Wrev/1000);