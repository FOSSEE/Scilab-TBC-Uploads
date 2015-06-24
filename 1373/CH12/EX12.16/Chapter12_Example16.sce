//Chapter-12, Example 12.16, Page 532
//=============================================================================
clc
clear

//INPUT DATA
A=15.82;//Total outside area of heat exchanger in m^2
Thi=110;//Inlet temperature of oil in degree C
Ch=1900;//Specific heat of oil in J/kg.K
mh=170.9;//Mass flow rate of oil in kg/min
mc=68;//Mass flow rate of water in kg/min
Tci=35;//Inlet temperature of water in degree C
U=320;//Overall heat transfer coefficient in W/m^2.K
Cc=4186;//Specific heat of water in J/kg.K

//CALCULATIONS
C1=((mh*Ch)/60);//Heat capacity of oil in W/K
C2=((mc*Cc)/60);//Heat capacity of water in W/K
D=(U*A*((1/C1)-(1/C2)));//Constant
r=(C1/C2);//Ratio of heat capacity of oil and water
Tho=Thi-(((Thi-Tci)*(1-exp(D)))/(r-exp(D)));//Outlet temperature of oil in degree C
Tco=Tci+(r*(Thi-Tho));//Outlet temperature of water in degree C

//OUTPUT
mprintf('The exit temperature of oil is %3.2f degree C \n The exit temperature of water is %3.1f degree C',Tho,Tco)

//=================================END OF PROGRAM==============================
