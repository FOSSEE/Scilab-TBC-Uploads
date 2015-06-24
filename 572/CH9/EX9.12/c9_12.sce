//(9.12)  Air enters a turbojet engine at 0.8 bar, 240K, and an inlet velocity of 1000 km/h (278 m/s). The pressure ratio across the compressor is 8. The turbine inlet temperature is 1200K and the pressure at the nozzle exit is 0.8 bar. The work developed by the turbine equals the compressor work input. The diffuser, compressor, turbine, and nozzle processes are isentropic, and there is no pressure drop for flow through the combustor. For operation at steady state, determine the velocity at the nozzle exit and the pressure at each principal state. Neglect kinetic energy at the exit of all components except the nozzle and neglect potential energy throughout.

//solution

//variable initialization
Ta = 240                                                                        //in kelvin
pa = .8                                                                         //in bar
Va = 278                                                                        //in m/s
PR = 8                                                                          //pressure ratio across the compressor
T3 = 1200                                                                       //in kelvin
p5 = .8                                                                         //in bar

//from table A-22
ha = 240.02                                                                     //in kj/kg
h1 = ha + ((Va^2)/2)*10^-3                                                      //in kj/kg
//Interpolating in Table A-22 gives
pr1 = 1.070
pra = .6355
p1 = (pr1/pra)*pa                                                               //in bars

p2 = PR*p1                                                                      //in bars
//Interpolating in Table A-22, we get
h2 = 505.5                                                                      //in kj/kg
//At state 3 the temperature is given as T3 = 1200 K. From Table A-22
h3 = 1277.79                                                                    //in kj/kg
//using assumption 'There is no pressure drop for flow through the combustor', 
p3 = p2
//with the help of assumption, 'The turbine work output equals the work required to drive the compressor.',
h4 = h3+h1-h2                                                                   //in kj/kg
//Interpolating in Table A-22 with h4, gives
pr4 = 116.8
//pr data from table A-22 gives
pr4 = 116
pr3 = 238

p4 = p3*(pr4/pr3)                                                               //in bars

//The expansion through the nozzle is isentropic to
p5 = .8                                                                         //in bars
pr5 = pr4*(p5/p4)
//from table A-22
h5 = 621.3                                                                     //in kj/kg

V5 = sqrt(2*(h4-h5)*10^3)                                                       //the velocity at the nozzle exit in m/s

printf('the velocity at the nozzle exit in m/s is:  %f',V5)
printf('\npa in bars =  %f',pa)
printf('\np1 in bars =  %f',p1)
printf('\np2 in bars =  %f',p2)
printf('\np3 in bars =  %f',p3)
printf('\np4 in bars =  %f',p4)
printf('\np5 in bars =  %f',p5)




























