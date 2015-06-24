clc
clear
//input data
R=0.5//Degree of reaction
ns=0.85//Stage efficiency
P0=800//Inlet pressure of hot gas in kPa
T0=900//Inlet temperature of hot gas in K
U=160//Blade speed in m/s
m=75//Mass flow rate of hot gas in kg/s
a1=70//Absolute air angle at first stage nozzle exit in degree

//calculations
C1=U/sind(a1)//Velocity of steam at exit from nozzle in m/s
Ca=C1*cosd(a1)//Axial velocity of hot gas in m/s
C2=Ca//Velocity of steam at exit from stage in m/s
b1=0//Blade angle at inlet in degree as Wx1=0 
a2=b1//Stator exit angle in degree as degree of reaction is 0.5
b2=a1//Blade angle at outlet in degree as degree of reaction is 0.5
Cx2=0//Velocity of whirl at outlet in m/s
Cx1=U//Velocity of whirl at inlet in m/s
W=m*U*(Cx1+Cx2)*10^-6//Power developed in MW
Wm=W*10^3/m//Work done per unit mass flow rate in kJ/kg
dhs=Wm/ns//Isentropic enthalpy drop in kJ/kg

//output
printf('(a)Rotor blade angles\n    Absolute air angle at first stage nozzle exit is %3i degree\n    Blade angle at outlet is %3i degree\n    Blade angle at inlet is %3i degree\n    Stator exit angle is %3i degree\n(b)Power developed is %3.2f MW\n(c)Isentropic enthalpy drop is %3.2f kJ/kg',a1,b2,b1,a2,W,dhs)
