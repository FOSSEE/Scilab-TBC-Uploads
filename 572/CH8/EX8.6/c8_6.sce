//(8.6)   Consider a reheat–regenerative vapor power cycle with two feedwater heaters, a closed feedwater heater and an open feedwater heater. Steam enters the first turbine at 8.0 MPa, 480C and expands to 0.7 MPa. The steam is reheated to 440C before entering the second turbine, where it expands to the condenser pressure of 0.008 MPa. Steam is extracted from the first turbine at 2 MPa and fed to the closed feedwater heater. Feedwater leaves the closed heater at 205C and 8.0 MPa, and condensate exits as saturated liquid at 2 MPa. The condensate is trapped into the open feedwater heater. Steam extracted from the second turbine at 0.3 MPa is also fed into the open feedwater heater, which operates at 0.3 MPa. The stream exiting the open feedwater heater is saturated liquid at 0.3 MPa. The net power output of the cycle is 100 MW. There is no stray heat transfer from any component to its surroundings. If the working fluid experiences no irreversibilities as it passes through the turbines, pumps, steam generator, reheater, and condenser, determine (a) the thermal efficiency, (b) the mass flow rate of the steam entering the first turbine, in kg/h.


//solution

//analysis
//State 1 is the same as in Example 8.3, so
h1 = 3348.4                                                                     //in kj/kg
s1 = 6.6586                                                                     //in kj/kg.k
//State 2 is fixed by p2  2.0 MPa and the specific entropy s2, which is the same as that of state 1. Interpolating in Table A-4, we get
h2 = 2963.5                                                                     //in kj/kg
//The state at the exit of the first turbine is the same as at the exit of the first turbine of Example 8.3, so
h3 = 2741.8                                                                     //in kj/kg
//State 4 is superheated vapor at 0.7 MPa, 440C. From Table A-4,
h4 = 3353.3                                                                     //in kj/kg
s4 = 7.7571                                                                     //in kj/kg.k
//interpolating in table A-4 at p5 = .3MPa and s5 = s4, the enthalpy at state 5 is
h5 = 3101.5                                                                     //in kj/kg
//Using s6 = s4, the quality at state 6 is found to be
x6 = .9382
//using steam tables, for state 6
hf = 173.88                                                                     //in kj/kg
hfg = 2403.1                                                                    //in kj/kg

h6 = hf + x6*hfg

//at the condenser exit, we have 
h7 = 173.88                                                                     //in kj/kg
v7 = 1.0084e-3                                                                  //in m^3/kg
p8 = .3                                                                         //in MPa
p7 = .008                                                                       //in MPa

h8 = h7 + v7*(p8-p7)*10^6*10^-3                                                 //The specific enthalpy at the exit of the first pump in kj/kg
//The liquid leaving the open feedwater heater at state 9 is saturated liquid at 0.3 MPa. The specific enthalpy is
h9 = 561.47                                                                     //in kj/kg

//for the exit of the second pump,
v9 = 1.0732e-3                                                                  //in m^3/kg
p10 = 8                                                                         //in MPa
p9 = .3                                                                         //in MPa
h10 = h9 + v9*(p10-p9)*10^6*10^-3                                               //The specific enthalpy at the exit of the second pump in kj/kg
//The condensate leaving the closed heater is saturated at 2 MPa. From Table A-3,
h12 = 908.79                                                                    //in kj/kg
h13 = h12                                                                       //since The fluid passing through the trap undergoes a throttling process
//for the feedwater exiting the closed heater
hf = 875.1                                                                      //in kj/kg
vf = 1.1646e-3                                                                  //in m^3/kg
p11 = 8                                                                         //in MPa
psat = 1.73                                                                     //in MPa
h11 = hf + vf*(p11-psat)*10^6*10^-3                                             //in kj/kg

ydash = (h11-h10)/(h2-h12)                                                      //the fraction of the total flow diverted to the closed heater
ydashdash = ((1-ydash)*h8+ydash*h13-h9)/(h8-h5)                                 //the fraction of the total flow diverted to the open heater

//part(a)
wt1dot = (h1-h2) + (1-ydash)*(h2-h3)                                            //The work developed by the first turbine per unit of mass entering in kj/kg
wt2dot = (1-ydash)*(h4-h5) + (1-ydash-ydashdash)*(h5-h6)                        //The work developed by the second turbine per unit of mass in kj/kg
wp1dot = (1-ydash-ydashdash)*(h8-h7)                                            //The work for the first pump per unit of mass in kj/kg
wp2dot = h10-h9                                                                 //The work for the second pump per unit of mass in kj/kg
qindot = (h1-h11) + (1-ydash)*(h4-h3)                                  //The total heat added expressed on the basis of a unit of mass entering the first turbine

eta = (wt1dot+wt2dot-wp1dot-wp2dot)/qindot                                      //thermal efficiency
printf('the thermal efficiency is:  %f',eta)

//part(b)
Wcycledot = 100                                                                 //the net power output of the cycle in MW
m1dot = (Wcycledot*3600*10^3)/(wt1dot+wt2dot-wp1dot-wp2dot)
printf('\nthe mass flow rate of the steam entering the first turbine, in kg/h is:  %e',m1dot)















































