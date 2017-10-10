////
//Variable Declaration
beta = 2.04e-4          //Thermal exapansion coefficient, /K
kapa = 45.9e-6          //Isothermal compressibility, /bar
T = 298.15              //Std. Temperature, K
R = 8.206e-2            //Ideal gas constant, atm.L/(mol.K) 
T1 = 320.0              //Temperature, K
Pi = 1.0                //Initial Pressure, bar
V = 1.00                //Volume, m3
a = 1.35                //van der Waals constant a for nitrogen, atm.L2/mol2
P0 =1
//Calculations
dUbydV=(beta*T1-kapa*P0)/kapa
;Pf=(beta*T1-kapa*P0)/kapa
;
dVT = V*kapa*(Pf-Pi)
dVbyV = dVT*100/V
Vm = Pi/(R*T1)
dUbydVm = a/(Vm**2)

//Results 
printf("\n dUbydV = %4.2e bar",dUbydV)

printf("\n dVbyV = %4.3f percent",dVbyV)

printf("\n dUbydVm = %4.0e atm",dUbydVm)

