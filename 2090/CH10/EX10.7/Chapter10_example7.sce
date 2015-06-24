clc
clear
//Input data
v1=0.3;//Velocity of the pump plunger in m/s
l=0.575;//The length of the fuel pipe in m
A=1/20;//The cross sectional area of pipe to the plunger cylinder
a=1/40;//The area of nozzle hole to the pipe 
p1=27.6;//Initial pressure in the line in bar 
p2=27.6;//The compression pressure of the engine
K=17830*10^5;//The bulk modulus of fuel in N/m^2
df=860;//The density of the fuel in kg/m^3
pi=3.141;//Mathematical constant of pi

//Calculations
Vs=(K/df)^(1/2);//The velocity of pressure disturbances in m/s
t=l/Vs;//Time taken by the disturbance to travel through pipe line in s
Vp=(1/A)*v1;//The velocity of the fuel at the inlet of the pipe line in m/s
p=[(K/Vs)*Vp]/10^5;//The change in pressure in bar
pi=p+p1;//The pressure according to change in velocity in bar
po=p1+p;//The change in total to the disturbance pressure in bar 
vc=Vp-(a*((2*(po-p2))/df)^(1/2));//Change in the velocity in m/s
pr=26.8;//By trail method the first reflected pressure wave from velocity in bar
Vc=pr*(Vs/(K/10^5));//The change in velocity in m/s
po1=p1+p+pr;//The pressure at the orifice end of the pipe in bar
vo=a*((2*(po1-p2)*10^5)/df)^(1/2);//The velocity at the oriface end of the pipe in m/s

//Output
printf('(a)The velocity of the pressure disturbance = %3.0f m/s \n (b) The time taken by the disturbance to travel through the pipe line = %3.4f s \n (c) The velocity at the pump end of the pipe line as the plunger moves = %3.0f m/s \n The pressure at the pump end of the pipe line as the plunger moves =  %3.1f bar \n (d) The magnitude of the first reflected pressure = %3.2f bar \n The magnitude of the first reflected velocity wave = %3.2f m/s \n (e)The pressure at the oriface end of the pipe line after the first reflection = %3.1f bar \n The velocity at the oriface end of the pipe line after the first reflection = %3.2f m/s ',Vs,t,Vp,pi,pr,Vc,po1,vo)

