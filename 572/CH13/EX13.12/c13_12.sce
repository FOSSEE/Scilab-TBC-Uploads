//(13.12)  Determine the chemical exergy of liquid octane at 25C, 1 atm, in kJ/kg. (a) Using Eq. 13.36, evaluate the chemical exergy for an environment consisting of a gas phase at 25C, 1 atm obeying the ideal gas model with the following composition on a molar basis: N2, 75.67%; O2, 20.35%; H2O, 3.12%; CO2, 0.03%; other, 0.83%. (b) Evaluate the chemical exergy using Eq. 13.44b and standard chemical exergies from Table A-26 (Model II).



//solution

//Complete combustion of liquid octane with O2 is described by
//C8H18(l) + 12.5O2   ------>   8CO2 + 9H2O

//part(a)
Rbar = 8.314                                                                    //universal gas constant in SI units
Tnot = 298.15                                                                   //in kelvin
//from table A-25
gbarC8H18 = 6610
gbarO2 = 0
gbarCO2 = -394380
gbarH2O = -228590

yO2 = .2035
yCO2 = .0003
yH2O = .0312

M = 114.22                                                                      //molecular weight of liquid octane

ech = ((gbarC8H18 + 12.5*gbarO2 -8*gbarCO2 -9*gbarH2O) + Rbar*Tnot*log(yO2^12.5/(yCO2^8*yH2O^9    )))/M
printf('part(a) the chemical exergy obtained on a unit mass basis is:  %f',ech)

//part(b)
//With data from Table A-25 and Model II of Table A-26
gbarH2O = -237180
ebarCO2 = 19870
ebarH2O = 900
ebarO2 = 3970

ech = ((gbarC8H18 + 12.5*gbarO2 -8*gbarCO2 - 9*gbarH2O) + 8*ebarCO2 + 9*ebarH2O - 12.5*ebarO2)/M
printf('\n\npart(b) chemical exergy on a unit mass basis is:  %f',ech)













