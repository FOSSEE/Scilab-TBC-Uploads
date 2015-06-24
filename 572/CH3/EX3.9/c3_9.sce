// (3.9)  Two tanks are connected by a valve. One tank contains 2 kg of carbon monoxide gas at 77C and 0.7 bar. The other tank holds 8 kg of the same gas at 27C and 1.2 bar. The valve is opened and the gases are allowed to mix while receiving energy byheat transfer from the surroundings. The final equilibrium temperature is 42C. Using the ideal gas model, determine (a) the final equilibrium pressure, in bar (b) the heat transfer for the process, in kJ.

//solution

//variable initialization

m1 = 2                          //initial mass of gas in tank 1 in kg
T1 = 350                        //initial temperature in kelvin in tank1
p1 = .7                         //initial pressure in bar in tank 1
m2 = 8                          //initial mass of gas in tank 2 in kg
T2 = 300                        //initial temperature in kelvin in tank 2
p2 = 1.2                        //initial pressure in bar in tank 2
Tf = 315                        //final equilibrium temperature in kelvin

pf = ((m1+m2)*Tf)/((m1*T1/p1)+(m2*T2/p2)) 

printf('the final equilibrium pressure in bar is: \n\t pf = %f',pf)

//from table A-20
Cv = .745                     //in KJ/Kg.k
Ui = (m1*Cv*T1)+(m2*Cv*T2)
Uf = (m1+m2)*Cv*Tf
deltaU = Uf-Ui
Q = deltaU
printf('\n\nthe heat transfer for the process in KJ is :\n\t Q = %f',Q)
