clc
clear
//Input data
bp=30;//The brake power of the engine in kW
N=3000;//The engine speed in rpm 
bsfc=0.28;//The brake specific fuel consumption in kg/kWh 
API=35;//The API
p2=160;//The pressure at which fuel is injected in bar
CA=28;//The crank angle in degrees
p1=35;//The pressure in the combustion chamber in bar
Cv=0.92;//The coefficient of velocity 
pi=3.141;//The mathematical constant of pi

//Calculations
S=141.5/(131.5+API);//Specific gravity
df=S*1000;//The density of the fuel in kg/m^3
D=(CA/360)/(N/60);//Duration of injection in s
F=(bsfc*bp)/((N/2)*60);//Fuel consumption per cycle in kg
mf=F/D;//Mass flow rate of fuel in kg/s
Cf=Cv*((2*(p2-p1)*10^5)/df)^(1/2);//Velocity of injection of the fuel in m/s
Af=[mf/(df*Cf)]*10^6;//Area of the fuel orifice in mm^2
d=(4*Af/pi)^(1/2);//The diameter of the orifice in mm

//Output
printf('The velocity of injection of the fuel = %3.1f m/s \n The diameter of the fuel orifice = %3.3f mm ',Cf,d)
