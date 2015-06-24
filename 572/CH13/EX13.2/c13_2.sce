//(13.2)  Methane, CH4, is burned with dry air. The molar analysis of the products on a dry basis is CO2, 9.7%; CO, 0.5%; O2, 2.95%; and N2, 86.85%. Determine (a) the air–fuel ratio on both a molar and a mass basis, (b) the percent theoretical air, (c) the dew point temperature of the products, in C, if the mixture were cooled at 1 atm.

//solution

//part(a)
//The chemical equation
//a CH4 + b*(O2 + 3.76N2)  --->  9.7CO2 + .5CO + 2.95O2 + 86.85N2 + cH2O

//applying conservation of mass 
a = 9.7 + .5
c = 2*a
b = [9.7*2+.5+2*2.95+c]/2

Ma = 28.97                                                                      //molar mass of air
MCH4 = 16.04                                                                    //molar mass of methane
//On a molar basis, the air–fuel ratio is
AFbar = b*(1+3.76)/a
//On a mass basis
AF = AFbar*(Ma/MCH4)

printf('the air-fuel ratio on a molar basis is:  %f',AFbar)
printf('\nthe air-fuel ratio on a mass basis is:  %f',AF)

//part(b)
//The balanced chemical equation for the complete combustion of methane with the theoretical amount of air is
//CH4 + 2(O2 + 3.76N2)  --->  CO2 + 2H2O + 7.52N2
//The theoretical air–fuel ratio on a molar basis is
AFbartheo = 2*(1+3.76)/1
//The percent theoretical air is
Ta = AFbar/AFbartheo
printf('\n\nthe percent theoretical air is:  %f',Ta*100)

//part(c)
//the mole fraction of the water vapor is
yv = 20.4/(100+20.4)
pv = yv*1
//Interpolating in Table A-2,
T = 57                                                                          //in degree celcius
printf('\n\nthe dew point temperature of the products, in C, if the mixture were cooled at 1 atm is:  %f',T)















  