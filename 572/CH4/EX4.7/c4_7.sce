// (4.7)   Steam enters the condenser of a vapor power plant at 0.1 bar with a quality of 0.95 and condensate exits at 0.1 bar and 45C. Cooling water enters the condenser in a separate stream as a liquid at 20C and exits as a liquid at 35C with no change in pressure. Heat transfer from the outside of the condenser and changes in the kinetic and potential energies of the flowing streams can be ignored. For steady-state operation, determine (a) the ratio of the mass flow rate of the cooling water to the mass flow rate of the condensing stream. (b) the rate of energy transfer from the condensing steam to the cooling water, in kJ per kg of steam passing through the condenser.

//solution

//variable initialization
P1 = .1                                    //pressure of steam entering in bar
x1 = .95                                   //quality of steam entering
P2 = .1                                    //pressure of exiting condensate in bar
T2 = 45                                    //temperature of exiting condensate in degree celcius
T3 = 20                                    //temperature of cooling entry water in degree celcius
T4 = 35                                    //temperature of cooling exit water in degree celcius

//part (a)
//from table A-3
hf = 191.83                               //in KJ/kg
hg = 2584.7                               //in Kj/kg
h1 = hf + x1*(hg-hf)                      //in kj/kg

h2 = 188.45                              //by  assumption At states 2, 3, and 4, h is approximately equal to hf(T), in kj/kg
deltah4_3= 62.7                         //by assumption 4,in kj/kg
ratio = (h1-h2)/(deltah4_3)
printf('the ratio of the mass flow rate of the cooling water to the mass flow rate of the condensing stream is :\n\t m3dot/m1dot = %f',ratio)

//part(b)
Qrate = (h2-h1)
printf('\n\nthe rate of energy transfer from the condensing steam to the cooling water, in kJ per kg of steam passing through the condenser is :\n\t Qrate =  %f',Qrate)













  