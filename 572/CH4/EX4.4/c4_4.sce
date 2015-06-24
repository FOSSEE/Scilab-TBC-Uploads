//(4.4)   Steam enters a turbine operating at steady state with a mass flow rate of 4600 kg/h. The turbine develops a power output of 1000 kW. At the inlet, the pressure is 60 bar, the temperature is 400C, and the velocity is 10 m/s. At the exit, the pressure is 0.1 bar, the quality is 0.9 (90%), and the velocity is 50 m/s. Calculate the rate of heat transfer between the turbine and surroundings, in kW.

//solution

//variable initialization
m1dot = 4600                         //mass flow rate in Kg/h
Wcvdot = 1000                        //turbine power output in kw
P1 = 60                              //inlet pressure in bar
T1 = 400                             //inlet temperature in degree celcius
V1 = 10                              //inlet velocity in m/s
P2 = .1                              //exit pressure in bar
x2 = .9                              //the quality at the exit
V2 = 50                              //exit velocity in m/s

//from table A-4
h1 = 3177.2                          //specific enthalpy at the inlet in kj/kg
//from table A-3
hf2 = 191.83
hg2 = 2584.63

h2 = hf2+x2*(hg2-hf2)                //specific enthalpy at the exit in kj/kg
Qcvdot = Wcvdot + m1dot*((h2-h1)+(V2^2-V1^2)/(2*1000))/3600
printf('the rate of heat transfer between the turbine and surroundings in kw is:\n\t Qcvdot = %f',Qcvdot)