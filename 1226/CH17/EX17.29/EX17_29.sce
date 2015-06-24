clc;funcprot(0);//EXAMPLE 17.29
// Initialisation of Variables
n=4;.................//No of cylinders
C=45200;..................//calorific value of fuel in kJ/kg
etamech=0.82;...............//Mechanical efficiency
etarel=0.7;.................//Relative efficiency
etast=0.52;...............//Air standard efficiency
etav=0.78;...............//Volumetric efficiency
sbr=1.25;...................//Stroke bore ratio
N=2400;...................//Engine rpm
p=1;.......................//Suction pressure in bar
t=298;....................//Suction temperature in bar
BP=72;...................//Brake power in kW
ga=1.4;......................//Degree of freedom
afr=16;.................//Air fuel ratio
R=287;.......................//Gas constant in J/kg
//calculations
r=(1/(1-etast))^(1/(ga-1));............//Compression ratio
disp(r,"The compression ratio :")
etath=etast*etarel;.....................//Indicated thermal efficiency
disp(etath*100,"Indicated thermal efficiency:")
IP=BP/etamech;....................//Indicated power in kW
mf=IP/(etath*C);......................//Fuel consumption in kg/s
bsfc=mf/BP;......................//Brake specific fuel consumption in kg/kWs
disp(bsfc*3600,"Brake specific fuel consumption (in kg/kWs):")
mafm=afr+1;......................//Mass of air fuel mixture in kg/kg of fuel
mafm1=mafm*mf;....................//Mass of air fuel mixture when mf amount of fuel is supplied to engine per second
v=(mafm1*R*t)/(p*10^5);.......................///Volume of air fuel mixture supplied to the engine in m^3
Vs=v/etav;..............................//Swept volume in m^3
D=((Vs)/((%pi/4)*sbr*n*(N/(2*60))))^(1/3);............//Engine bore in m
disp(D*1000,"Engine bore (in mm):")
disp(D*1000*sbr,"Engine stroke (in mm):")
