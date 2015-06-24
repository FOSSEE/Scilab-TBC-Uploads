clc
clear

//input
v=230;//voltage of a shunt generator in volts
ra=0.2;//armature resistance of the shunt generator in ohms
rf=115;//feild resistance of the shunt generator in ohms
n=0.85;//overall effeciency in per units
il=37;//load current in amperes

//calculations
inp=(v*il)/n;//input in watts
inp1=inp/1000;//input power in kilo watts 
fi=v/rf;//feild current in amperes
ai=il+fi;//armature current in amperes
e=v+(ai*ra);//generated e.m.f. in volts
ap=e*ai;//armature power in watts
ml=inp-ap;//mechanical losses in watts
nm=ap/inp;//mechanical effeciency in per units
Nm=nm*100;
ne=(v*il)/ap;//electrical effeciency in per units
Ne=ne*100;

//output
mprintf('the input power will be %3.0f kW and the mechanical losses are %3.0f W \n the mechanical and electrical effeciecies are %3.1f per cent and %3.1f per cent',inp1,ml,Nm,Ne) 
