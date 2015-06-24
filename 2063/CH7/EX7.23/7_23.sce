clc
clear
//Input data
r=15;//The air fuel ratio by weight
CV=45000;//Calorific value of fuel in kJ/kg
nm=85;//Mechanical efficiency of 4 stroke 4 cylinder engine in percent
na=53;//Air standard efficiency of the engine in percent
nr=65;//Relative efficiency of the engine in percent
nv=80;//Volumetric efficiency of the engine in percent
r1=1.3;//Stroke to bore ratio
p1=1;//Suction pressure in bar
T=303;//Suction temperature in K
S=3000;//The operating speed of the engine in rpm
P=75;//Power at brakes in kW
r2=1.4;//Ratio of specific heats for air
R1=0.287;//Characteristic gas constant for air fuel mixture in kJ/kg K

//Calculations
R=(1/(1-(na/100)))^(1/(r2-1));//Compression ratio of the engine
nti=((na/100)*(nr/100))*100;//The indicated thermal efficiency in percent
Pi=P/(nm/100);//Indicated power in kW
F=Pi/((nti*CV)/100);//Fuel per second injected in kg/sec
B=F/P;//Brake specific fuel consumption in kg/kWsec
A=1+r;//Mass of fuel mixture entering the engine foe every one kg of fuel in kg
m=A*F;//Mass of air fuel mixture per second in kg
V=(m*R1*T)/(p1*10^5/1000);//Volume of air fuel mixture supplied to the engine per sec
Vs=V/(nv/100);//Swept volume per second in m^3/sec
d=((Vs*2*60*4)/(S*3.14*r1*4))^(1/3)*1000;//Diameter of the bore in mm
L=r1*d;//Stroke length in mm

//Output
printf('(a)Compression ratio is %3.1f \n (b)Indicated thermal efficiency is %3.1f percent\n (c)Brake specific fuel consumption is %3.7f kg/kW sec\n (d)Bore diameter of the engine is %3.1f mm\n (e)Stroke length of the engine is %3.1f mm',R,nti,B,d,L)
