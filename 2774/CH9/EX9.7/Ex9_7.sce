clc
// initialization of variables
// The reaction equation is 

//C8H18 + 12.5(O2+3.76N2)---> 8CO2 + 47N2 + 9H2O

// All the enthalpy of formation values are taken from Table B.5 with units in kJ/mol
hfCO2=-393520 // enthalpy of formation associated with CO2
hbarCO2=42769 //enthalpy associated with CO2 at 1000K from table E.4
hdotbarCO2=9364//enthalpy associated with CO2 at 298K from table E.4

hfH2O=-241820 // enthalpy of formation associated with gaseous H2O
hbarH2O=35882 //enthalpy associated with H20 at 1000K from table E.6
hdotbarH2O=9904//enthalpy associated with H20 at 298K from table E.6
hfC3H8=-103850// ehthalpy of formation associated with C3H8

hbarN2p=(30784+29476)/2 //enthalpy associated with N2 at 1000K from table E.2 by averaging enthalpy at 1020K and 980K for product
hbarN2r=17563 //enthalpy associated with N2 at 600K from table E.2 for reactant
hdotbarN2=8669//enthalpy associated with N2 at 298K from table E.2

hfC8H18=-249910 // enthalpy of formation associated with octane taken from internet as not provided in textbook

hbarO2=17929 // enthalpy associated with O2 at 600K table E.3
hdotbarO2=8682//enthalpy associated with O2 at 298K table E.3

// using first law and including kinetic energy change
// 0=Hp-Hr+Mp*(V^2)/2

Hp=8*(hfCO2+hbarCO2-hdotbarCO2)+9*(hfH2O+hbarH2O-hdotbarH2O)+47*(hbarN2p-hdotbarN2)
// enthalpy of products

Hr=(hfC8H18)+12.5*(hbarO2-hdotbarO2)+47*(hbarN2r-hdotbarN2)
// enthalpy of reactants

Mp=8*44+9*18+47*28 //(mass of products by multiplying molecular mass to number of moles)

V=sqrt(2*1000*(Hr-Hp)/Mp)// exit velocity using energy balance

printf("The exit velocity is %i m/s",V)

//The answers are slightly different in textbook as they have approximated the values while in SCILAB results are precise




