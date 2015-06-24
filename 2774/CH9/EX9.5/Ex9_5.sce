clc
// initialization of variables
// The reaction equation is 
//C3H8 + 5(O2+3.76N2)---> 3CO2 + 18.8N2 + 4H2O

// All the enthalpy of formation values are taken from Table B.5 with units in kJ/mol
hfCO2=-393520 // enthalpy associated with CO2
hfH2O=-285830 // enthalpy associated with H2O(l)
hfC3H8=-103850// ehthalpy associated with C3H8

// by first law Q= Hproducts - Hreactants

Qg=3*(hfCO2)+4*(hfH2O)-(hfC3H8) // enthalpy of combustion for gaseous propane

printf("The enthalpy of combustion for gaseous propane is %i kJ\n",Qg)

hv=15060 // enthalpy of vaporization for propane

Ql=3*(hfCO2)+4*(hfH2O)-(hfC3H8-hv) // enthalpy of combustion for liquid propane

printf(" The enthalpy of combustion for liquid propane is %i kJ\n",Ql)

//The answers are slightly different in textbook as they have approximated the result while in SCILAB results are precise





