//deals with properties of air flow through supersonic wind tunnel
To=1000; //air temperature at the reservior of wind tunnel in degree Kelvin
Po=10*1.01*10^5; // air pressure at the reservior of wind tunnel in N/m^2
R=287; //gas constant for air
Do=Po/(R*To) //density at the reservior
Te=300; //static temperature at the exit in degree Kelvin
y=1.4;// specific heat ratio for air
T1=833; //temperature at the throat in degree Kelvin
Te=300; //temperature at the exit in degree Kelvin
D1=Do*(T1/To)^(1/(y-1)) //density at the throat
Mt=0.5;  //mass flow rate through nozzle,Kg/s
Cp=1008; //specific heat at constant pressure for air,J/Kg.K
De=Do*(Te/To)^(1/(y-1))
