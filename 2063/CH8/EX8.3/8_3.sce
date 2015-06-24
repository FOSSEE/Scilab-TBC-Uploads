clc
clear
//Input data
P1=12;//Inlet pressure of steam nozzle in bar
T1=250;//Inlet temperature of steam nozzle in degrees celcius
P2=2;//Final pressure of the steam nozzle in bar
n=1.3;//Polytropic constant for superheated steam
St=6.831;//For isentropic expansion, entropy remains constant in kJ/kg
h1=2935.4//Enthalpy of steam at P1 from steam table in kJ/kg
ht=2860;//Enthalpy of steam at pt in kJ/kg
vt=0.325;//Specific volume of steam at the throat conditions in m^3/kg
m=0.2;//Mass of steam discharged through the nozzle in kg/hour
q=0.947;//The dryness fraction of steam at exit from steam tables
hg=2589.6;//Enthalpy of steam at exit in kJ/kg
vs=0.8854;//Specific volume of saturated steam in m^3/kg

//Calculations
pt=(P2/(n+1))^(n/(n-1))*P1;//Critical pressure ratio i.e.,Throat pressure in bar
Vt=(2*1000*(h1-ht))^(0.5);//Velocity of steam at throat in m/s
At=((m*vt)/Vt)*10^4;//Area of the throat in cm^2 from continuity equation
ve=q*vs;//Specific volume of steam at exit in m^3/kg
Ve=(2*1000*(h1-hg))^(0.5);//Velocity of steam at nozzle exit in m/s
Ae=((m*ve)/Ve)*10^4;//Exit area in cm^2

//Output
printf('(a)Throat area of steam nozzle is %3.3f cm^2\n (b)Exit area of steam nozzle is %3.3f cm^2\n (c)Exit velocity of the nozzle is %3.1f m/s',At,Ae,Ve)
