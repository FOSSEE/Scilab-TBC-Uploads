clc
// initialization of variables

// The reaction equation for theoritical air is 
//C3H8 + 5(O2 + 3.76N2) ---> 3CO2 + 4H2O + 18.8N2

// All the enthalpy of formation values are taken from Table B.5 with units in kJ/mol

Np=18.8+4+3 // number of moles of product
hfCO2=-393520 // enthalpy associated with CO2
hbarCO2=137400 //enthalpy associated with CO2 at 2600 K from table E.4 by interpolation
hbarCO2dash=125152 //enthalpy associated with CO2 at 2400 K from table E.4
hdotbarCO2=9364//enthalpy associated with CO2 at 298K from table E.4

hfC3H8=-103850// ehthalpy associated with C3H8

hfH2O=-241820 // enthalpy associated with gaseous H2O
hbarH2O=114273 //enthalpy associated with H20 at 2600 K from table E.6
hbarH2Odash=103508 //enthalpy associated with H20 at 2400 K  from table E.6
hdotbarH2O=9904//enthalpy associated with H20 at 298K from table E.6

hbarN2=86600 //enthalpy associated with N2 at 2600 K from table E.2 by interpolation
hbarN2dash=79320 //enthalpy associated with N2 at 2400 K from table E.2 
hdotbarN2=8669//enthalpy associated with N2 at 298K from table E.2

// for adiabatic flame temperature first assume products composed only of nitrogen and Q=0 as adiabatic
hp=(hfC3H8-3*(hfCO2)-4*(hfH2O))/Np +hdotbarN2 

// using hp we assume temp=2600 K
// then energy for 2600 k is
H1=3*(hfCO2+hbarCO2-hdotbarCO2)+4*(hfH2O+hbarH2O-hdotbarH2O)+18.8*(hbarN2-hdotbarN2) // energy assuming temperature to be 2600 K

// now at 2400 K adiabatic temperature
H2=3*(hfCO2+hbarCO2dash-hdotbarCO2)+4*(hfH2O+hbarH2Odash-hdotbarH2O)+18.8*(hbarN2dash-hdotbarN2) // energy assuming temperature to be 2400 K
 
 // now interpolation between these two temperatures
Tp=2400-((hp+H2)/(H1-H2))*(2600-2400) // adiabatic temperature by interpolation
printf("The adiabatic flame temperature is %i K",Tp)

//The answers are slightly different in textbook as they have approximated the values while in SCILAB results are precise





