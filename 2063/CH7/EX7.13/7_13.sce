clc
clear
//Input data
ma=6;//Air supplied per minute by a single jet carburetor in kg/min
mf=0.44;//Mass flow rate of petrol in kg/min
s=0.74;//Specific gravity of petrol in kg/m^3
p1=1;//Initial pressure of air in bar
T1=300;//Initial temperature of air in K
Ci=1.35;//Isentropic coefficient of air
V=90;//Speed of air in the venturi in m/s
Vc=0.85;//Velocity coefficient of the venturi in m/s
Cf=0.66;//Coefficient of discharge for the jet
Cp=1005;//Coefficient of pressure in J/kg K
n=1.35;//Isentropic coefficient of air
R=0.281;//Real gas constant in Nm/kg K
rhof=740;//Density of fuel in mm of Hg

//Calculations
p2=(1-((V/Vc)^(2)/(2*T1*Cp)))^((n)/(n-1));//Pressure at the venturi in bar
V1=((R*T1)/(p1*10^5))*1000;//Initial volume in m^3/kg
V2=V1*((p1/p2)^(0.741));//Final volume in m^3/kg
A2=((ma*V2)/(V*60))*10^4;//Throat area of venturi in cm^2
d=((A2*4)/3.14)^(0.5);//Diameter of venturi in cm
deltaPa=1-p2;//Pressure drop causing air flow in bar
deltaPf=0.8*deltaPa;//Pressure drop causing fuel flow in bar
Af=(mf/60)*(10^4)/((Cf)*(2*rhof*deltaPf*10^5)^(1/2));//Area through which fuel flows in cm^2
df=((Af*(4/3.14))^(1/2))*10;//Diameter of fuel jet in mm

printf('(a)The diameter of the venturi of the venturi if the air speed is 90 m/s is %3.2f cm\n (b)The diameter of the jet if the pressure drop at the jet is 0.8 times the pressure drop at the venturi is %3.4f mm',d,df)
