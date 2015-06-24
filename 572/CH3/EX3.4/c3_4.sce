// (3.4) Water contained in a piston–cylinder assembly undergoes two processes in series from an initial state where the pressure is 10 bar and the temperature is 400C.Process 1–2: The water is cooled as it is compressed at a constant pressure of 10 bar to the saturated vapor state. Process 2–3: The water is cooled at constant volume to 150C.(a) Sketch both processes on T–v and p–v diagrams.(b) For the overall process determine the work, in kJ/kg. (c) For the overall process determine the heat transfer, in kJ/kg.

//solution

//variable initialization
P1 = 10*(10^5)                                //initial pressure in pascal
T1 = 400                               // initial temperature in degree celcius

v1 = .3066                             // specific volume in state 1 in m3/kg obtained from table A-4
u1 = 2957.3                            // specific internal energy in state 1 in KJ/Kg obtained from table A-4
v2 = .1944                             // specific volume in state 2 in m3/kg obtained from table A-3
w1to2 = (P1*(v2-v1))/1000          // work in KJ/Kg in process 1-2
w2to3 = 0                               // work in process 2-3
W = w1to2 + w2to3                        // net work in KJ/kg

v3 = v2
vf3 = 1.0905*10^(-3)                  // specific volume of fluid in state 3 from table A-2
vg3 = .3928                           // specific volume of gas in state 3 from table A-2
x3 = (v3-vf3)/(vg3-vf3)
uf3 = 631.68                          // specific internal energy for fluid in state 3 from table A-2
ug3 = 2559.5                          // specific internal energy for gas in state 3 from table A-2
u3 = uf3+x3*(ug3-uf3)                 // specific internal energy in state 3 in Kj/Kg
q = (u3-u1) + W                       // heat transfer in Kj/Kg
printf(' the work done in the overall process in KJ/Kg is:\n\t W = %f',W);
printf(' \nthe heat transfer in the overall process in KJ/Kg is:\n\t Q = %f',q);