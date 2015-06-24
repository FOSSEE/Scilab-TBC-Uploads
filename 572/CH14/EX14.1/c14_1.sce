//(14.1)  Evaluate the equilibrium constant, expressed as log10K, for the reaction at (a) 298 K and (b) 2000 K. Compare with the value obtained from Table A-27.
  
  
//solution

//The reaction is CO + .5O2  ---->   CO2

//part(a)
T = 298                                                                         //in kelvin
Rbar = 8.314                                                                    //universal gas constant in SI units
//from table A-25

hfbarCO2 = -393520                                                              //in kj/kmol
hfbarCO = -110530                                                               //in kj/kmol
hfbarO2 = 0                                                                     //in kj/kmol
deltahbarCO2 = 0                                                                //in kj/kmol
deltahbarCO = 0                                                                 //in kj/kmol
deltahbarO2 = 0                                                                 //in kj/kmol
sbarCO2 = 213.69                                                                //in kj/kmol.K
sbarCO = 197.54                                                                 //in kj/kmol.K
sbarO2 = 205.03                                                                 //in kj/kmol.K

deltaG = [hfbarCO2-hfbarCO-.5*hfbarO2] + [deltahbarCO2-deltahbarCO-.5*deltahbarO2] - T*(sbarCO2-sbarCO-.5*sbarO2)
lnK = -deltaG/(Rbar*T)
logK = (1/log(10))*lnK
//from table A-27
logKtable = 45.066
printf('part(a) the value of equilibrium constant expressed as log10K is:  %f',logK)
printf('\nthe value of equilibrium constant expressed as log10K from table A-27 is:  %f',logKtable)

//part(b)
T = 2000                                                                        //in kelvin
//from table A-23
hfbarCO2 = -393520                                                              //in kj/kmol
hfbarCO = -110530                                                               //in kj/kmol
hfbarO2 = 0                                                                     //in kj/kmol
deltahbarCO2 = 100804-9364                                                      //in kj/kmol
deltahbarCO = 65408 - 8669                                                      //in kj/kmol
deltahbarO2 = 67881 - 8682                                                      //in kj/kmol
sbarCO2 = 309.210                                                               //in kj/kmol.K
sbarCO = 258.6                                                                  //in kj/kmol.K
sbarO2 = 268.655                                                                //in kj/kmol.K

deltaG = [hfbarCO2-hfbarCO-.5*hfbarO2] + [deltahbarCO2-deltahbarCO-.5*deltahbarO2] - T*(sbarCO2-sbarCO-.5*sbarO2)
lnK = -deltaG/(Rbar*T)
logK = (1/log(10))*lnK
//from table A-27
logKtable = 2.884
printf('\n\npart(b) the value of equilibrium constant expressed as log10K is:  %f',logK)
printf('\nthe value of equilibrium constant expressed as log10K from table A-27 is:  %f',logKtable)













