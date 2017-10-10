////
//Variable Declaration
n = 3.0                //Number of moles of CO2
Ti = 300     //Initial and final state Temeperatures of CO2, K
Tf = 600
pi = 1.00     //Initial and final state pressure of CO2, K
pf = 3.00
cpm = 27.98            //Specific heat of mercury, J/(mol.K)
M = 200.59             //Molecualr wt of mercury, g/(mol)
beta = 1.81e-4         //per K
rho = 13.54            //Density of mercury, g/cm3
R = 8.314              //Ideal Gas Constant, J/(mol.K) 

//Calcualtions
dS1 = n*cpm*log(Tf/Ti)
dS2 = n*(M/(rho*1e6))*beta*(pf-pi)*1e5
dS = dS1 - dS2

//Results
printf("\n Entropy change of process is %4.1f J/(mol.K)",dS)

printf("\n Ratio of pressure to temperature dependent term %3.1e\nhence effect of pressure dependent term is very less",dS2/dS1)

printf("\n The above value is different as given in the text") 


