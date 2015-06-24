clc
// initialization of variables
// The reaction equation is 
//C3H8 + 5(O2+3.76N2)---> 3CO2 + 18.8N2 + 4H2O

// All the enthalpy of formation values are taken from Table B.5 with units in kJ/mol
hfCO2=-393520 // enthalpy of formation associated with CO2
hbarCO2=22280 //enthalpy associated with CO2 at 600K from table E.4
hdotbarCO2=9364//enthalpy associated with CO2 at 298K from table E.4

hfH2O=-241820 // enthalpy of formation associated with gaseous H2O
hbarH2O=20402 //enthalpy associated with H20 at 600K from table E.6
hdotbarH2O=9904//enthalpy associated with H20 at 298K from table E.6

hfC3H8=-103850// ehthalpy of formation associated with C3H8

hbarN2=17563 //enthalpy associated with N2 at 600K from table E.2
hdotbarN2=8669//enthalpy associated with N2 at 298K from table E.2
// by first law Q= Hproducts - Hreactants

Qg=3*(hfCO2+hbarCO2-hdotbarCO2)+4*(hfH2O+hbarH2O-hdotbarH2O)+18.8*(hbarN2-hdotbarN2)-(hfC3H8) // enthalpy of combustion

printf("The heat transfer required is %i kJ\n",Qg)

//The answer is WRONG textbook as they have made an error in calculating Qg 
