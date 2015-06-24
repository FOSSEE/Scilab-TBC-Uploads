clear;
clc;

//Example1.4 (Electric Heating of a House at High Elevation)

//(a)
t1=10+273;//Initial temperature of house[K]
t2=20+273;//Temperature after turning on heater[K]
tavg=(t1+t2)/2;//Average temperature[K]
cp=1.007;//[kJ/kg.K]
cv=.720;//[kJ/kg.K]
disp("kJ/kg.K",cp,"and",cv,"K",tavg,"at the average temperature of","The specific heat capacities of air")
A=200;//The floor area[m^2]
h=3;//Height of room[m]
V=A*h;//Volume of the air in the house[m^3]
P=84.6;//Pressure [kPa]
R=0.287;//Universal gas constant[kPa.m^3/kg.K]
m=(P*V)/(R*t1);//[kg]
disp("kg",m,"Mass of air in the room is")
Eincv=m*cv*(t2-t1);
disp("kJ",Eincv,"The amount of energy transferred to air at constant volume is ")
u_cost=0.075;//Unit cost of energy[$/kWh]
Cost1=(Eincv*u_cost)/(3600);//[$]
disp(Cost1,"Cost of Energy is $")

//(b)
Eincp=m*cp*(t2-t1);//[kJ]
disp("kJ",Eincp,"The amount of energy transferred to air at constant is ")
Cost2=(Eincp*u_cost)/3600;//[$]
disp(Cost2,"Cost of Energy is $")