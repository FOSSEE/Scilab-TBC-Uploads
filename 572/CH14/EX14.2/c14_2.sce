//(14.2)  One kilomole of carbon monoxide, CO, reacts with .5kmol of oxygen, O2, to form an equilibrium mixture of CO2, CO, and O2 at 2500 K and (a) 1 atm, (b) 10 atm. Determine the equilibrium composition in terms of mole fractions


//solution

//Applying conservation of mass, the overall balanced chemical reaction equation is
//CO + .5O2    ------->    zCO + (z/2)O2 + (1-z)CO2

//At 2500 K, Table A-27 gives
log10K = -1.44
K = 10^log10K                                                                   //equilibrium constant
//part(a)
p = 1                                                                           //in atm
//solving equation K = (z/(1-z))*(2/(2 + z))^.5 *(p/1)^.5 gives
z = .129
yCO = 2*z/(2 + z)
yO2 = z/(2 + z)
yCO2 = 2*(1 - z)/(2 + z)
printf('part(a) mole fraction of CO is:  %f',yCO)
printf('\nmole fraction of O2 is:  %f',yO2)
printf('\nmole fraction of CO2 is:  %f',yCO2)

//part(b)
p = 10                                                                          //in atm
//solving equation K = (z/(1-z))*(2/(2 + z))^.5 *(p/1)^.5 gives
z = .062
yCO = 2*z/(2 + z)
yO2 = z/(2 + z)
yCO2 = 2*(1 - z)/(2 + z)
printf('\n\npart(b) mole fraction of CO is:  %f',yCO)
printf('\nmole fraction of O2 is:  %f',yO2)
printf('\nmole fraction of CO2 is:  %f',yCO2)
