//Chapter-12, Example 12.14, Page 528
//=============================================================================
clc
clear

//INPUT DATA
N=3000;//Number of brass tubes
D=0.02;//Diameter of brass tube in m
Tci=20;//Inlet temperature of cooling water in degree C
mc=3000;//Mass flow rate of cooling water in kg/s
ho=15500;//Heat transfer coefficient for condensation in W/m^2.K
Q=(2.3*10^8);//Heat load of the condenser in W
Thi=50;//Temperature at which steam condenses in degree C
hfg=2380//Enthalpy of liquid vapour mixture in kJ/kg
m=1;//Flow rate of each tube in kg/s
Cc=4180;//Specific heat of water in J/kg.K

//Properties of water at 300K from data book
Cc=4186;//Specific heat in J/kg.K
mu=(855*10^-6);//Dynamic viscosity in Ns/m^2
k=0.613;//Thermal Conductivity in W/mK
Pr=5.83//Prantl number

//CALCULATIONS
Tco=((Q/(mc*Cc))+Tci);//Outlet temperature of cooling water in degree C
Re=((4*m)/(3.1415*D*mu));//Reynold's number
Nu=(0.023*Re^(4/5)*Pr^(2/5));//Nusselts number
hi=(Nu*(k/D));//Heat transfer coefficient in W/m^2.K
U=(1/((1/ho)+(1/hi)));//Overall heat transfer coefficient in W/m^2.K
Cmin=(mc*Cc);//Minimum heat capacity in W/K
Qmax=(Cmin*(Thi-Tci));//Maximum heat transfer rate in W
e=(Q/Qmax);//Effectiveness of heat transfer
NTU=0.8;//Number of transfer units from Fig. 12.16 on page no.525 
A=((NTU*Cmin)/U);//Area of heat exchanger in m^2
L=(A/(2*N*3.1415*D));//Length of tube per pass in m
ms=(Q/(hfg*1000));//Amount of steam condensed in kg/s

//OUTPUT
mprintf('The outlet temperature of the cooling water is %3.2f degree C \n The overall heat transfer coefficient is %3.1f W/m^2.K \n Tube length per pass using NTU method is %3.2f m \n The rate of condensation of steam is %3.0f kg/s',Tco,U,L,ms)

//=================================END OF PROGRAM==============================



