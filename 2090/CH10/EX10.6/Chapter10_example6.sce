clc
clear
//Input data
n=4;//Number of cylinders 
N=2500;//The engine speed in rpm 
P=90;//The power produced by the engine in kW
bsfc=0.28;//The brake specific fuel consumption in kg/kWh
v=3.5;//The volume of fuel in the barrel in cc
vp=2.5;//Volume of fuel in the pipe line in cc
vi=2;//The fuel inside the injector in cc
p1=280;//The average injection pressure in bar
p2=30;//The compression pressure of air during injection in bar
df=850;//The density of the fuel in kg/m^3
K=80*10^-6;//The coefficient of compressibility of fuel per bar
pi=1;//The pressure with which fuel enter into the barrel in bar

//Calculations
F=(bsfc*P)/((N/2)*60);//Fuel consumption per cycle in kg
F1=F/n;//Fuel consumption per cylinder in kg/cycle
Vf=[F1/df]*10^6;//Volume of fuel injected per cylinder per cycle in cm^3
V1=v+vp+vi;//Total initial volume in cc
V=K*V1*(p1-pi);//Change in volume due to compression in cc
Vp=Vf+V;//Volume displaced by plunger in cc
W=[(1/2)*(p1-pi)*10^5*V*10^-6]+[(p1-p2)*10^5*Vf*10^-6];//Pump work per cycle in J
P1=(W*N)/(2*60*1000);//Power lost per cylinder in kW
P2=P1*4;//Total power lost for pumping the fuel in kW

//Output 
printf('The displacement volume of one plunger per cycle = %3.4f cc \n Total power lost for pumping the fuel = %3.3f kW',Vp,P2)
