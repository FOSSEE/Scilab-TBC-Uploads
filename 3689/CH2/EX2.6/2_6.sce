////Variable Declaration  Part d
n = 2.5          //moles of ideal gas
R = 8.314        //Ideal gas constant, J/(mol.K)
cvm = 12.47      //Heat Capacity at constant volume, J/(mol.K)

pext = 1.00      //External Pressure, bar
Ti = 325.        //Initial Temeprature, K
pi = 2.50        //Initial Pressure, bar
pf = 1.25        //Final pressure, bar 

//Calculations  Adiabatic process q = 0; DU = w
q = 0.0     
Tf = Ti*(cvm + R*pext/pi)/(cvm + R*pext/pf )
DU=n*cvm*(Tf-Ti)
;w=n*cvm*(Tf-Ti)
;
DH = DU + n*R*(Tf-Ti)

//Results
printf("\n The final temperature at end of adiabatic procees is %4.1f K",Tf)

printf("\n The enthalpy change of adiabatic procees is %4.1f J",DH)

printf("\n The Internal energy change of  adiabatic procees is %4.1f J",DU)

printf("\n The work done in expansion of adiabatic procees is %4.1f J",w)

