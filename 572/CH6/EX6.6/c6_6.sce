//(6.6)   Steam enters a turbine with a pressure of 30 bar, a temperature of 400C, and a velocity of 160 m/s. Saturated vapor at 100C exits with a velocity of 100 m /s. At steady state, the turbine develops work equal to 540 kJ per kg of steam flowing through the turbine. Heat transfer between the turbine and its surroundings occurs at an average outer surface temperature of 350 K. Determine the rate at which entropy is produced within the turbine per kg of steam flowing, in kJ/kg.k. Neglect the change in potential energy between inlet and exit

//solution

//variable initialization
P1 = 30                                      //pressure of steam entering the turbine in bar
T1 = 400                                     //temperature of steam entering the turbine in degree celcius
V1 = 160                                     //velocity of steam entering the turbine in m/s
T2 = 100                                     //temperature of steam exiting in degree celcius
V2 = 100                                     //velocity of steam exiting in m/s
Wcvdot = 540                                 //work produced by turbine in kJ/kg of steam
Tb = 350                                     //temperature of the boundary in kelvin

//from table A-4 and table A-2,
h1 = 3230.9                                 //specific enthalpy at entry in Kj/kg
h2 = 2676.1                                 //specific enthalpy at exit in kj/kg

//reduction in mass and energy balance equations results in 
Qcvdot = Wcvdot + (h2 - h1)+ (V2^2-V1^2)/(2*10^3)          //heat transfer rate

//from table A-2
s2 = 7.3549                                 //in kj/kg.k
//from table A-4
s1 = 6.9212                                 //in kj/kg.k

//from entropy and mass balance equations
sigmadot = -(Qcvdot/Tb) + (s2-s1)

printf('the rate at which entropy is produced within the turbine per kg of steam flowing, in kJ/kg.k is:\n\t entropyrate = %f',sigmadot)