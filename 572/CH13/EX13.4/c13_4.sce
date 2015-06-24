//(13.4)   Liquid octane enters an internal combustion engine operating at steady state with a mass flow rate of 1.8  103 kg/s and is mixed with the theoretical amount of air. The fuel and air enter the engine at 25C and 1 atm. The mixture burns completely and combustion products leave the engine at 890 K. The engine develops a power output of 37 kW. Determine the rate of heat transfer from the engine, in kW, neglecting kinetic and potential energy effects.


//solution
//The balanced chemical equation for complete combustion with the theoretical amount of air is obtained from the solution to Example 13.1 as
//C8H18 +12.5O2 + 47N2 -----> 8CO2 + 9H2O + 47N2
//from tabel A-25
hRbar = -249910                                                                 //in kj/kmol

//With enthalpy of formation values for CO2 and H2O(g) from Table A-25, and enthalpy values for N2, H2O, and CO2 from Table A-23
hpbar = 8*[-393520 + (36876 - 9364)] + 9*[-241820 + (31429 - 9904)] + 47*[(26568 - 8669)]

mfdot = 1.8e-3                                                                  //mass flow rate of liquid octane in kg/s
M = 114.22                                                                      //molar mass of octane
nFdot = mfdot/M                                                                 //molar flow rate of the fuel in kmol/s

Wcvdot = 37                                                                     //power output of the engine in kw

Qcvdot = Wcvdot + nFdot*(hpbar-hRbar)                                           //in kw
printf('the rate of heat transfer from the engine, in kW is:  %f',Qcvdot)