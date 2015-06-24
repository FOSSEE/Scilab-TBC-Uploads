//(13.11)  Determine the Gibbs function of formation of methane at the standard state, 25C and 1 atm, in kJ/kmol, and compare with the value given in Table A-25.



//solution

//Methane is formed from carbon and hydrogen according to
//C + 2H2 ------>  CH4

//In the present case, all substances are at the same temperature and pressure, 25C and 1 atm, which correspond to the standard reference state values
hCbar = 0
hH2bar = 0
gRbar = 0
//With enthalpy of formation and absolute entropy data from Table A-25
hfbarCH4 = -74850
sbarCH4 = 186.16
sbarC = 5.74
sbarH2 = 130.57

Tref = 298.15                                                                   //in kelvin

gfbarCH4 = hfbarCH4 -Tref*(sbarCH4-sbarC-2*sbarH2)                              //in kj/kmol
printf('the gibbs function of formation of methane at the standard state is:  %f',gfbarCH4)
