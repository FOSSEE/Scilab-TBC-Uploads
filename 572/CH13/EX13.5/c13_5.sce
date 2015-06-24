//(13.5)  Methane gas at 400 K and 1 atm enters a combustion chamber, where it is mixed with air entering at 500 K and 1 atm. The products of combustion exit at 1800 K and 1 atm with the product analysis given in Example 13.2. For operation at steady state, determine the rate of heat transfer from the combustion chamber in kJ per kmol of fuel. Neglect kinetic and potential energy effects. The average value for the specific heat cpbar of methane between 298 and 400 K is 38 kJ/kmol K.


//solution

//When expressed on a per mole of fuel basis, the balanced chemical equation obtained in the solution to Example 13.2  takes the form
//CH4 + 2.265O2 + 8.515N2  ------>  .951CO2 + .049CO + .289O2 + 8.515N2 + 2H2O
cpbar = 38                                                                      //specific heat in KJ/kmol.K
//from table A-25
hfnotbar = -74850                                                               //enthalpy of formation for methane
//from table A-23
deltahbarO2 = 14770-8682
deltahbarN2 = 14581-8669

hRbar = hfnotbar + cpbar*(400-298) + 2.265*deltahbarO2 + 8.515*deltahbarN2      //in kj/kmol
//With enthalpy of formation values for CO2, CO, and H2O(g) from Table A-25 and enthalpy values from Table A-23
hpbar = .951*[-393520 + (88806 - 9364)] + .049*[-110530 + (58191 - 8669)] + .289*(60371 - 8682) + 8.515*(57651 - 8669) + 2*[-241820 + (72513 - 9904)]

Qcvdot = hpbar - hRbar                                                          //in kj/kmol
printf('the rate of heat transfer from the combustion chamber in kJ per kmol of fuel is:  %f',Qcvdot)