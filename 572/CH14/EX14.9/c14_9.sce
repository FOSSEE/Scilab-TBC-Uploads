//(14.9)  As a result of heating, a system consisting initially of 1 kmol of CO2,.5 kmol of O2, and  5 kmol of N2 forms an equilibrium mixture of CO2, CO, O2, N2, and NO at 3000 K, 1 atm. Determine the composition of the equilibrium mixture.



//solution

//The overall reaction can be written as
//CO2 + .5O2 + .5N2  ---->  aCO + bNO + (1-a)CO2 + .5(1+a-b)O2 + .5(1-b)N2

//At 3000 K, Table A-27 provides
log10K1 = -.485                                                                 //equilibrium constant of the reaction CO2 <--> CO + .5O2
log10K2 = -.913                                                                 //equilibrium constant of the reaction .5O2 + .5N2 <-->NO

K1 = 10^log10K1
K2 = 10^log10K2

//solving equations K1 = (a/(1-a))*((1+a-b)/(4+a))^.5  and  K2 = 2b/((1+a-b)*(1-b))^.5
a = .3745
b = .0675
printf('The composition of the equilibrium mixture, in kmol per kmol of CO2 present initially, is then 0.3745CO, 0.0675NO, 0.6255CO2, 0.6535O2, 0.4663N2.')