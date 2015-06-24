//example 3
//the rate of irreversibility of a heat engine
clear
clc
Tsink=300 //Temp. of sink in K
Tsource=1200 //Temp. of source in K
nthrev=1-Tsink/Tsource //efficiency of carnot engine  
Qin=500 //rate at which heat is received from the source in kW
Wrev=nthrev*Qin //maximum power produced by a heat engine in kW
Wout=180 //actual power output in kW
I=Wrev-Wout //irreversibility rate of the process in kW
printf("\n Hence, the reversible power for this process is = %.0f kW. \n",Wrev);
printf("\n The irreversibility rate is = %.0f kW. \n",I);