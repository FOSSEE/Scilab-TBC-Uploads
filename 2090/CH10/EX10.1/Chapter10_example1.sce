clc
clear
//Input data
bsfc=0.3;//The brake specific fuel consumption in kg/kWh
bp=250;//The brake power in kW
N=1500;//Number of cycles per min in rpm
CA=15;//Crank angle in degrees
pi1=30;//The pressure of air in the cylinder at the beginning of the injection in bar
pi2=60;//The pressure of air in the cylinder at the end of the injection in bar
pf1=220;//The fuel injection pressure at the beginning in bar
pf2=550;//The fuel injection pressure at the end in bar
Cd=0.65;//The coefficient of discharge for the injector 
df=850;//The density of the fuel in kg/m^3
p1=1.013;//The atmospheric pressure in bar
n=4;//The number of orifices used in the nozzle
x=6;//Number of cylinders
pi=3.141;//The mathematical constant of pi

//Calculations
mf=bsfc*bp/60;//The mass flow rate of fuel in kg/min
F=(mf/(N/2))*(1/x);//Fuel injected per cycle per cylinder in kg
s=(CA/360)/(N/60);//Duration of injection in s
mf1=F/s;//Mass of fuel injected per second
p1=pf1-pi1;//Pressure difference at the beginning in bar
p2=pf2-pi2;//Pressure difference at the end in bar
pa=(p1+p2)/2;//Average pressure difference in bar
Af=[mf1/(Cd*(2*df*pa*10^5)^(1/2))]*10^6;//Area of cross section of the nozzle in mm^2
do=[(Af/n)*(4/pi)]^(1/2);//The diameter of the orifice in mm

//Output
printf('The nozzle area required per injection = %3.3f mm^2 \n The diameter of the orifice = %3.2f mm ',Af,do)
