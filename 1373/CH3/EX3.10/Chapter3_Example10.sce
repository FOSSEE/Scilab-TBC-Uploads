//Chapter-3, Example 3.10, Page 65
//=============================================================================
clc
clear

//INPUT DATA
LA=0.05;//Length of section A in m
LB=0.1;//Length of section A in m
LC=0.1;//Length of section A in m
LD=0.05;//Length of section A in m
LE=0.05;//Length of section A in m
kA=50;//Thermal conductivity of section A in W/m.K
kB=10;//Thermal conductivity of section B in W/m.K
kC=6.67;//Thermal conductivity of section C in W/m.K
kD=20;//Thermal conductivity of section D in W/m.K
kE=30;//Thermal conductivity of section E in W/m.K
Aa=1;//Area of section A in m^2
Ab=0.5;//Area of section B in m^2
Ac=0.5;//Area of section C in m^2
Ad=1;//Area of section D in m^2
Ae=1;//Area of section E in m^2
T=[800,100];//Temperature at inlet and outlet temperatures in degree C

//CALCULATIONS
Ra=(LA/(kA*Aa));//Thermal Resistance of section A in K/W
Rb=(LB/(kB*Ab));//Thermal Resistance of section B in K/W
Rc=(LC/(kC*Ac));//Thermal Resistance of section C in K/W
Rd=(LD/(kD*Ad));//Thermal Resistance of section D in K/W
Re=(LE/(kE*Ae));//Thermal Resistance of section E in K/W
Rf=((Rb*Rc)/(Rb+Rc));//Equivalent resistance of section B and section C in K/W
R=Ra+Rf+Rd+Re;//Equivalent resistance of all sections in K/W
Q=((T(1)-T(2))/R)/1000;//Heat transfer through the composite wall in kW

//OUTPUT
mprintf('Heat transfer through the composite wall is %3.1f kW',Q)

//=================================END OF PROGRAM==============================

