clc
// initialization of variables
mdots=100 // mass flow rate of sodium in kg/s
Ts1=450 // inlet temperature of sodium in degree celsius
Ts2=350 // exit temperature of sodium in degree celsius
Cp=1.25 // specific heat of sodium in KJ/kg.*C
Tw1=20 // inlet temperature of water in degree celsius
Pw=5000 // inlet pressure of water in kPa 

// solution
hw1=88.65 // enthalpy from table C.4
hw2=2794 // enthalpy from table C.3
mdotw=(mdots*Cp*(Ts1-Ts2))/(hw2-hw1) // mass flow rate of water
printf("The mass flow rate of water is "+string(mdotw)+" kg/s \n")
Qdot=mdotw*(hw2-hw1) // heat transfer in kW using energy equation
printf(" The rate of heat transfer is "+string(Qdot)+" kW")
