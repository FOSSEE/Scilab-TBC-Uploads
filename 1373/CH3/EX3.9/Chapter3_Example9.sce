//Chapter-3, Example 3.9, Page 64
//=============================================================================
clc
clear

L1=0.006;//Thickness of each glass sheet in m
L2=0.002;//Thickness of air gap in m
Tb=-20;//Temperature of the air inside the room in degree C
Ta=30;//Ambient temperature of air in degree C
ha=23.26;//Heat transfer coefficient between glass and air in W/m^2.K
kglass=0.75;//Thermal conductivity of glass in W/m.K
kair=0.02;//Thermal conductivity of air in W/m.K

//CALCULATIONS
q=((Ta-Tb)/((1/ha)+(L1/kglass)+(L2/kair)+(L1/kglass)+(1/ha)));//Rate of heat leaking into the room per unit area of the door in W/m^2

//OUTPUT
mprintf('Rate of heat leaking into the room per unit area of the door is %3.1f W/m^2',q)

//=================================END OF PROGRAM==============================
