//(6.12)    A turbine operating at steady state receives air at a pressure of p1 = 3.0 bar and a temperature of T1=  390 K. Air exits the turbine at a pressure of p2 = 1.0 bar. The work developed is measured as 74 kJ per kg of air flowing through the turbine. The turbine operates adiabatically, and changes in kinetic and potential energy between inlet and exit can be neglected. Using the ideal gas model for air, determine the turbine efficiency.

//solution

//variable initialization
P1 = 3                                        //pressure of air entering in bar
T1 = 390                                      //temperature of air entering in kelvin
P2 = 1                                        //pressure of exit air
Wcvdot = 74                                   //work developed in kj/kg

//from table A-22,at 390k
h1 = 390.88                                   //in kj/kg
pr1 = 3.481

pr2 = (P2/P1)*pr1

//from interpolation table A-22
h2s = 285.27                                 //in kj/kg

Wcvdots = h1 - h2s

eta = Wcvdot/Wcvdots

printf('the turbine efficiency is : \n\t eta = %f',eta)