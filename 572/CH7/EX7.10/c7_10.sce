//(7.10)  A cogeneration system consists of a natural gas-fueled boiler and a steam turbine that develops power and provides steam for an industrial process. At steady state, fuel enters the boiler with an exergy rate of 100 MW. Steam exits the boiler at 50 bar, 466C with an exergy rate of 35 MW. Steam exits the turbine at 5 bar, 205C and a mass flow rate of 26.15 kg/s. The unit cost of the fuel is 1.44 cents per kw.h  of exergy. The costs of owning and operating the boiler and turbine are, respectively, dollar 1080/h and dollar 92/h. The feedwater and combustion air enter with negligible exergy and cost. The combustion products are discharged directly to the surroundings with negligible cost. Heat transfer with the surroundings and kinetic and potential energy effects are negligible. Let T0 = 298 K. (a) For the turbine, determine the power and the rate exergy exits with the steam, each in MW. (b) Determine the unit costs of the steam exiting the boiler, the steam exiting the turbine, and the power, each in cents per kw.h of exergy. (c) Determine the cost rates of the steam exiting the turbine and the power, each in $/h.


//solution

//variable initialization
EfFdot = 100                                                     //exergy rate of fuel entering the boiler in MW
cF = 1.44                                                        //unit cost of fuel in cents per kw.h
Zbdot = 1080                                                     //the cost of owning and operating boiler in dollars per hour
Ef1dot = 35                                                      //exergy rate of exiting steam from the boiler in MW
p1 = 50                                                          //pressure of exiting steam from the boiler in bar
T1 = 466                                                         //temperature of exiting steam from the boiler in degree celcius
Ztdot = 92                                                       //the cost of owning and operating turbine in dollars per hour
p2 = 5                                                           //pressure of exiting steam from the turbine in bars
T2 = 205                                                         //temperature of exiting steam from the turbine in degree celcius
m2dot = 26.15                                                    //mass flow rate of exiting steam from the turbine in kg/s
T0 = 298                                                         //in kelvin 


//part(a)
//from table A-4,
h1 = 3353.54                                                     //in kj/kg
h2 = 2865.96                                                     //in kj/kg
//from assumption,For each control volume,Qcvdot = 0 and kinetic and potential energy effects are negligible,the mass and energy rate balances for a control volume enclosing the turbine reduce at steady state to give
Wedot = m2dot *(h1-h2)/1000                                      //power in MW

//from table A-4
s1 = 6.8773                                                      //in kj/kg.k
s2 = 7.0806                                                      //in kj/kg.k

Ef2dot = Ef1dot+m2dot*(h2-h1-T0*(s2-s1))/1000                    //the rate exergy exits with the steam in MW
printf('for the turbine,the power in MW is:\t%f',Wedot)
printf('\nfor the turbine,the rate exergy exits with the steam in MW is:\t%f',Ef2dot)

//part(b)
c1 = cF*(EfFdot/Ef1dot) + ((Zbdot/Ef1dot)/10^3)*100              //unit cost of exiting steam from boiler in cents/Kw.h
c2 = c1                                                          //Assigning the same unit cost to the steam entering and exiting the turbine
ce = c1*((Ef1dot-Ef2dot)/Wedot) + ((Ztdot/Wedot)/10^3)*100       //unit cost of power in cents/kw.h

printf('\n\nthe unit costs of the steam exiting the boiler in cents per kw.h of exergy is:\t%f',c1)
printf('\nthe unit costs of the steam exiting the turbine in cents per kw.h of exergy is:\t%f',c2)
printf('\nunit cost of power in cents per kw.h is:\t%f',ce)

//part(c)
C2dot = (c2*Ef2dot*10^3)/100                                      //cost rate for low-pressure steam in dollars per hour
Cedot = (ce*Wedot*10^3)/100                                       //cost rate for power in dollars per hour

printf('\n\nthe cost rate of the steam exiting the turbine in dollars per hour is:  %f',C2dot)
printf('\nthe cost rate of the power in dollars per hour is:  %f',Cedot)













