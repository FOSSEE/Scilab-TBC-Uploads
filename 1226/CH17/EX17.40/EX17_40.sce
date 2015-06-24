clc;funcprot(0);//EXAMPLE 17.40
// Initialisation of Variables
n=6;................//No of cylinders
D=0.1;...............//Engine bore in m
L=0.14;...............//Engine stroke in m
N=2500;...............//Engine rpm
k=0.5;..................//Four stroke
bl=480;.................//Brake load in N
br=76;..................//Barometer reading in cm of Hg
d0=3.3/100;..............//Orifice diameter in m
Cd=0.62;.................//Co efficient of discharge of orifice
pd=14;...................//Pressure drop across orifice in cm of Hg
tr=25;...............//Room temperature in C
mf=0.32;................//Fuel consumption in kg/min
rhohg=13600;.................//Density of Hg in kg/m^3
R=0.287;...................//gas constant in kJ/kgK
g=9.81;.................//Acceleration due to gravity in m/s^2
CD=17000;....................//dynamometer constant
//Calculations
Vs=(%pi/4)*D*D*L*(N/2)*(n/60);..............//Swept volume in m^3
br1=(br/100)*rhohg*g*(10^-3);.............//Barometer reading into kN/m^2
rhoa=br1/(R*(tr+273));...............//Density of air
pd1=(pd/100)*rhohg*g;......................//Conversion of pd into N/m^2
ha=pd1/(rhoa*g);.......................//Head of air causing flow in m
Va=Cd*(%pi/4)*d0*d0*sqrt(2*g*ha);............//Volume of air passing through orifice of air box per min
etav=Va/Vs;....................//Volumetric efficiency
disp(etav*100,"Volumetric efficiency in %:")
BP=bl*(N/CD);................//Brake power in kW
pmb=(BP*6)/(L*D*D*k*10*N*n*(%pi/4));................//Brake mean effective pressure in bar
disp(pmb,"Brake mean effective pressure (in bar):")
T=(BP*60*1000)/(2*%pi*N);....................//Engine torque in N-m
disp(T,"Engine torque in N-m:")
bsfc=(mf*60)/BP;.......................//Brake specific fuel consumption in kg/kWh
disp(bsfc,"Brake specific fuel consumption in kg/kWh:")
