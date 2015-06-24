//(6.13)    Steam enters a nozzle operating at steady state at p1 = 1.0 MPa and T1=  320C with a velocity of 30 m/s. The pressure and temperature at the exit are p2 = 0.3 MPa and T2 = 180C. There is no significant heat transfer between the nozzle and its surroundings, and changes in potential energy between inlet and exit can be neglected. Determine the nozzle efficiency.


//solution

//variable initialization
P1 = 1                                                   //pressure of entering steam in Mpa
T1 = 593                                                 //temperature of entering steam in kelvin
V1 = 30                                                  //velocity of entering steam in m/s
P2 = .3                                                  //pressure of exit steam in Mpa
T2 = 453                                                 //temperature of exit steam in kelvin

//from table A-4, at T1 = 593 kelvin and P1 = 1 Mpa;T2 = 453 kelvin and P2 = .3 Mpa
h1 = 3093.9                                              //in kj/kg
s1 = 7.1962                                              //in kj/kg.k
h2 = 2823.9                                              //in kj/kg
V2squareby2 = h1 - h2 + (V1^2)/2000

//interpolating in table A-4
h2s = 2813.3                                            //in kj/kg
V2squareby2s = h1 - h2s + (V1^2)/2000
eta = V2squareby2/V2squareby2s
printf('the nozzle efficiency is :\n\t eta = %f',eta)