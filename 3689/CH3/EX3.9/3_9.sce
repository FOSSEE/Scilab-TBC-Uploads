////Variable Declaration
m = 124.0         //Mass of liquid methanol, g
Pi = 1.0          //Initial Pressure, bar
Ti = 298.0        //Intial Temperature, K
Pf = 2.5          //Final Pressure, bar
Tf = 425.0        //Intial Temperature, K
rho = 0.791       //Density, g/cc
Cpm = 81.1        //Specifi heat, J/(K.mol)
M = 32.04

//Calculations
n = m/M
DH = n*Cpm*(Tf-Ti)+ m*(Pf-Pi)*1e-6/rho

//Results
printf("\n Enthalpy change for change in state of methanol is %4.1f kJ",DH/1000)

