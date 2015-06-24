//(13.13)   Steam at 5 bar, 240C leaks from a line in a vapor power plant. Evaluate the flow exergy of the steam, in kJ/kg, relative to an environment at 25C, 1 atm in which the mole fraction of water vapor is yeH2O = 0.0303


//solution
Rbar = 8.314                                                                    //universal gas constant in SI units
Tnot = 298                                                                      //in kelvin
//With data from the steam tables
h = 2939.9                                                                      //in kj/kg
hnot = 104.9                                                                    //in kj/kg
s = 7.2307                                                                      //in kj/kg
snot = .3674                                                                    //in kj/kg
//With data from Table A-25
gbarH2Oliq = -237180
gbarH2Ogas = -228590
yeH2O = .0303
M =18                                                                           //molar mass of steam

ech = (1/M)*(gbarH2Oliq-gbarH2Ogas + Rbar*Tnot*log(1/yeH2O))                    //in kj/kg

ef = h-hnot-Tnot*(s-snot) + ech                                                 //in kj/kg
printf(' the flow exergy of the steam, in kJ/k is:  %f',ef)