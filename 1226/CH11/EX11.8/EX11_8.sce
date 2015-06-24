clc;funcprot(0);//EXAMPLE 11.8
// Initialisation of Variables
Vs=1489*10^(-6);.......................//Capacity of engine in m^3
N=4200;...............//Engine rpm at which max speed is developed
etaV=0.75;.....................//Volumetric efficiency
afr=13;........................//air fuel ratio
Ct=85;..........................//Theoretical air speed at peak power in m/s
C2=Ct;
Cda=0.82;....................//Coefficient of discharge for the venturi
Cdf=0.65;....................//Coefficient of discharge of main petrol jet
spgr=0.74;..................//Specific gravity of petrol
z=0.006;.................................//Level of petrol surface below choke
p1=1.013;......................//Atmospheric pressure in bar
t1=293;.........................//Atmospheric temperature in Kelvin
r=0.4;.............................//Ratio of diameter of emulsion tube to choke diameter
R=0.287;.............................//Gas constant in kJ/kgK
ga=1.4;..............................//Degree of freedom for air
g=9.81;..............................//Acceleration due to gravity in m/s^2
rhow=1000;...........................//Density of water in kg/m^3
//calculations
rhof=rhow*spgr;............................//Density of fuel in kg/m^3
Va=(etaV*Vs*N)/(60*2);.....................//Volume of air induced in m^3/s
ma=(p1*10^5*Va)/(R*t1*1000);...............//mass flow of air in kg/s
cp=R*(ga/(ga-1));.......................//Specific heat capacity of air in kJ/kgK
p2=((1-(((C2)^2)*(1/(2*cp*1000*t1))))^(ga/(ga-1)))*p1;...................//Throat pressure in bar
pt=p2;
vt=Va*(p1/p2)^(1/ga);.....................//Volume flow of air at choke in m^3/s
At=vt/(Ct*Cda);...................//Area of emulsion tube in m
D=sqrt((4*At*10^6)/(%pi*(1-r^2)));...................//Diameter of choke in mm
disp(D,"Diameter of choke (in mm):")
mf=ma/afr;..................//Mass flow of fuel in kg/s
delpa=(p1-p2)*10^5;
df=sqrt((mf/sqrt(2*rhof*(delpa-(g*z*rhof))))*(1/(Cdf*(%pi/4))));.................//Diameter of fuel jet in m
disp(df*1000,"Diameter of the fuel jet (in mm):")

