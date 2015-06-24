//example 7
//first law anlysis of combustion in bomb
clear
clc
Preact=1 //initial pressure in atm
Nreact=4 //Mo. of lbmol of reactants
Treact=537 //Temp. of reactants in R
Nprod=4 //No. of lbmol of products
Tprod=1800 //Temp. of products in R
Pprod=Preact*Nprod*Tprod/(Nreact*Treact) //final pressure of products in atm
Qout=1*(-32210-(1.986*537))+3*(0-1.986*537)-1*(-169300+18391.5-4027.5-(1.986*1800))-2*(-104040+15433.0-4258.0-(1.986*1800))-1*(0+13485.8-3725.1-(1.986*1800)) //Heat transfer during the process in Btu/lbmol CH4
printf("\n Hence, the final pressure in the tank is = %.2f atm. \n",Pprod);
printf("\n The heat transfer during the process is = %.0f Btu/lbmol CH4. \n",Qout);