clc;funcprot(0);//EXAMPLE 11.7
// Initialisation of Variables
as=6;........................//Air supply in kg/min
fs=0.45;..........................//Fuel supply in kg/min
p1=1.013;.......................//Atmospheric pressure in bar
t1=300;......................//Atmospheric temperature in Kelvin
rhof=740;......................//Density of fuel in kg/m^3
C2=92;........................//Air flow velocity in m/s
Cda=0.8;....................//Velocity co efficient
Cdf=0.6;.........................//Coefficient of discharge for fuel
ga=1.4;........................//Degree of freedom of gas
r=0.75;......................//ratio of pressure drop across venturi and of that of choke
R=0.287;........................//Gas constant in kJ/kgK
//Calculations
ma=as/60;.................................//Air flow in kg/s
mf=fs/60;.................................//Fuel flow in kg/s
cp=R*(ga/(ga-1));.......................//Specific heat capacity of air in kJ/kgK
p2=((1-(((C2/Cda)^2)*(1/(2*cp*1000*t1))))^(ga/(ga-1)))*p1;...................//Throat pressure in bar
v1=(R*t1*1000)/(p1*10^5);
v2=v1*(p1/p2)^(1/ga);................//specific volume in m^3/kg
A2=(ma*v2)/(C2);.................//Throat area in m^2
d2=sqrt((4*A2)/%pi);................//Throat diameter in m
disp(d2*100,"Throat diameter (in cm):")
pdv=p1-p2;..........//Pressure drop at venturi in bar
pdj=r*pdv;.............//Pressure drop at jet in bar
Af=((mf/Cdf)*(1/sqrt(2*rhof*pdj*10^5)));.............//Area of orifice in m^2
df=sqrt((4*Af)/%pi);................//Orifice diameter in m
disp(df,"Orifice diameter (in cm):")



