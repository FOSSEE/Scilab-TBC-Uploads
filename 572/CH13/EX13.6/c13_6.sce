//(13.6)   A mixture of 1 kmol of gaseous methane and 2 kmol of oxygen initially at 25C and 1 atm burns completely in a closed, rigid container. Heat transfer occurs until the products are cooled to 900 K. If the reactants and products each form ideal gas mixtures, determine (a) the amount of heat transfer, in kJ, and (b) the final pressure, in atm.


//solution

//variable initialization
nCH4 = 1                                                                        //moles of methane in kmol
nO2 = 2                                                                         //moles of oxygen in kmol
T1 = 25                                                                         //in degree celcius
p1 = 1                                                                          //in atm
T2 = 900                                                                        //in kelvin
Rbar = 8.314                                                                    //universal gas constant
//The chemical reaction equation for the complete combustion of methane with oxygen is
//CH4 + 2O2   ---->   CO2 + 2H2O

//part(a)
//with enthalpy of formation values from table A-25
hfbarCO2 = -393520
hfbarH2O = -241820
hfbarCH4 = -74850
//with enthalpy values from table A-23
deltahbarCO2 = 37405-9364
deltahbarH2O = 31828-9904

Q = ((hfbarCO2 + deltahbarCO2)+2*(hfbarH2O + deltahbarH2O) - hfbarCH4) + 3*Rbar*(T1+273-T2)
printf('the amount of heat transfer in kJ is:  %f',Q)

//part(b)
p2 = p1*(T2/(T1+273))                                                           //in atm
printf('\nthe final pressure in atm is:  %f',p2)












