//Chapter-12, Example 12.11, Page 518
//=============================================================================
clc
clear

//INPUT DATA
mc=4;//Mass flow rate of cold water in kg/s
Tci=38;//Inlet Temperature of cold water in degree C
Tco=55;//Outlet Temperature of cold water in degree C
D=0.02;//Diameter of the tube in m
v=0.35;//Velocity of water in m/s
Thi=95;//Inlet Temperature of hot water in degree C
mh=2;//Mass flow rate of hot water in kg/s
L=2;//Length of the tube in m
U=1500;//Overall heat transfer coefficient in W/m^2.K
c=4186;//Specific heat of water in J/kg.K
d=1000;//Density of water in kg/m^3

//CALCULATIONS
Q=(mc*c*(Tco-Tci));//Heat transfer rate for cold fluid in W
Tho=(Thi-(Q/(mh*c)));//Outlet temperature of hot fluid in degree C
T=Thi-Tco;//Difference of temperature between hot water inlet and cold water outlet in degree C
t=Tho-Tci;//Difference of temperature between hot water outlet and cold water inlet in degree C
Tlm=((T-t)/log(T/t));//LMTD for counterflow heat exchanger
A=(Q/(U*Tlm));//Area of heat exchanger in m^2
A1=(mc/(d*v));//Total flow area in m^2
n=((A1*4)/(3.14*D^2));//Number of tubes
L=(A/(36*3.14*D));//Length of each tube taking n=36 in m
N=2;//Since this length is greater than the permitted length of 2m, we must use more than one tube pass. Let us try 2 tube passes
P=((Tco-Tci)/(Thi-Tci));//P value for calculation of correction factor
R=((Thi-Tho)/(Tco-Tci));//R value for calculation of correction factor
F=0.9;//Corrction Factor from Fig.12.9 on page no. 514 
A2=(Q/(U*F*Tlm));//Total area required for one shall pass,2 tube pass exchanger in m^2
L1=(A2/(2*36*3.14*D));//Length of tube per pass taking n=36 in m

//OUTPUT
mprintf('Number of tubes per pass is %i \n Number of passes is %i \n Length of tube per pass is %3.3f m',n,N,L1)

//=================================END OF PROGRAM==============================
