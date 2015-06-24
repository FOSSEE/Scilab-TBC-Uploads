clc
// initialization of variables

// The reaction equation for theoritical air is 
//C3H8 + 5(O2 + 3.76N2) ---> 3CO2 + 4H2O + 18.8N2

// for 250% theoritical air reaction becomes
//C3H8 + 12.5(O2 + 3.76N2) ---> 3CO2 + 4H2O + 47N2 + 7.5O2

// All the enthalpy of formation values are taken from Table B.5 with units in kJ/mol

Np=47+7.5+4+3 // number of moles of product
hfCO2=-393520 // enthalpy of formation associated with CO2
hbarCO2=(62963+65271)/2 //enthalpy associated with CO2 at 1380 K from table E.4
hbarCO2dash=(58381+60666)/2 //enthalpy associated with CO2 at 1300 K by average from table E.4
hdotbarCO2=9364//enthalpy associated with CO2 at 298K from table E.4

hfC3H8=-103850// ehthalpy of formation associated with C3H8

hfH2O=-241820 // enthalpy of formation associated with gaseous H2O
hbarH2O=(51521+53351)/2 //enthalpy associated with H20 at 1380 K by taking average from table E.6
hbarH2Odash=48807 //enthalpy associated with H20 at 1300 K  from table E.6
hdotbarH2O=9904//enthalpy associated with H20 at 298K from table E.6

hbarN2=42920 //enthalpy associated with N2 at 1380K from table E.2 by interpolating enthalpy between 1020K and 980K 
hbarN2dash=40170 //enthalpy associated with N2 at 1300 K from table E.2 
hdotbarN2=8669//enthalpy associated with N2 at 298K from table E.2

hfO2=(44198+45648)/2 // enthalpy associated with O2 at 1380 Kby taking average from table E.3
hfO2dash=48807 // enthalpy associated with O2 at 1380 Kby taking average from table E.3
hdotbarO2=8682//enthalpy associated with O2 at 298K table E.3

// for adiabatic flame temperature first assume products composed only of nitrogen and Q=0 as adiabatic
hp=(hfC3H8-3*(hfCO2)-4*(hfH2O))/Np +hdotbarN2
// using hp we assume temp=1380 K
// then energy for 1380 k is
H1=3*(hfCO2+hbarCO2-hdotbarCO2)+4*(hfH2O+hbarH2O-hdotbarH2O)+7.5*(hfO2-hdotbarO2)+47*(hbarN2-hdotbarN2) // energy assuming temperature to be 1380 K

//this is very large 

// now at 1300 K adiabatic temperature
H2=3*(hfCO2+hbarCO2dash-hdotbarCO2)+4*(hfH2O+hbarH2Odash-hdotbarH2O)+7.5*(hfO2dash-hdotbarO2)+47*(hbarN2dash-hdotbarN2) // energy assuming temperature to be 1300 K
 
 // now interpolation between these two temperatures
Tp=1300-((hp+H2)/(H1-H2))*(1380-1300) // adiabatic temperature by interpolation
printf("The adiabatic flame temperature is %i K",Tp)

//The answers is different in textbook as they hav printed the value of hfCO2 with positive sign while calculating H2

