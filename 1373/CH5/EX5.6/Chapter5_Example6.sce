//Chapter-5, Example 5.6, Page 167
//=============================================================================
clc
clear


//INPUT DATA
D=0.00071;//Diameter of thermocouple in m
h=600;//Heat transfer coefficient in W/m^2.K
c=420;//Specific heat in J/kg.K
p=8600;//Density in kg/m^3

//CALCULATIONS
t=(p*c*D)/(4*h);//Time period in s
T=exp(-1);//Temperture distribution ratio
t1=(4*t);//Total time in s

//OUTPUT
mprintf('Thus at the end of time period t*=%3.3f s the temperature difference between the body and the source would be %3.3f of the initial temperature differnce. For getting a true reading of gas temperature, it should be recorded after 4t* = %i seconds after the thermocouple has been introduced into the stream',t,T,t1)

//=================================END OF PROGRAM==============================
