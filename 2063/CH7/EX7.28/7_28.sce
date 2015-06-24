clc
clear
//Input data
C=0.0033;//The capacity of a four stroke engine of compression ignition type
I=13;//Average indicated power developed in kW/m^3
N=3500;//Operating speed of the engine
nv=80;//Volumetric efficiency in percentage
p1=1.013;//Initial pressure in bar
T1=298;//Initial temperature in K
r=1.75;//Pressure ratio of the engine
ni=75;//The isentropic efficiency in percentage
nm=80;//mechanical efficiency in percentage
r1=1.4;//Polytropic index

//Calculations
Vs=(N/2)*C;//Swept volume in m^3/min
Vi=Vs*(nv/100);//Unsupercharged engine inducted volume in m^3/min
Pb=p1*r;//Blower delivery pressure in bar
T2s=((r)^((r1-1)/r1))*T1;//Final temperature in K
T2=((T2s-T1)/(ni/100))+T1;//Blower delivery temperature in K
Ve=((Pb*Vs)*T1)/(T2*p1);//Equivalent volume at 1.013 bar and 298K in m^3/min
Vin=Ve-Vi;//Increase in inducted volume of air in m^3/min
Pin=Vin*I;//Increase in indicated power due to extra air inducted in kW
Pinp=((Pb-p1)*Vs*100)/60;//Increase in indicated power due to increase in induction pressure in kW
Pt=Pin+Pinp;//Total increase in indicated power in kW
nb=Pt*(nm/100);//Total increase in brake power efficiency in kW
ma=(Pb*Vs*100)/(60*0.287*T2);//Mass of air delivered by the blower in kg/s
Wb=ma*1.005*(T2-T1);//Work input to air by blower in kW
Pb1=Wb/(nv/100);//Power required to drive the blower in kW
Pb2=nb-Pb1;//Net increase in brake power in kW

//Output
printf('The net increase in brake power is %3.2f kW',Pb2)
