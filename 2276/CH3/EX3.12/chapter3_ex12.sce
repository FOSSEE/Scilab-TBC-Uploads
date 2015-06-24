clc
clear

//input
v=240;//voltage of d.c. series generator in volts
ra=0.1;//armature resistancce of d.c. series generator in ohms
rf=0.15;//feild resistance of d.c. series generator in ohms
n=0.87;//overall effeciency in per units
lp=7200;//load power in watts

//calculations
il=lp/v;//load current in amperes
R=ra+rf;//total resistance in ohms
e=v+(il*R);//generated e.m.f. in volts
ap=e*il;//armature power in watts
ne=(lp/ap);//electrical effeciency in per units
ne1=ne*100; 
nm=(n/ne)*100;//mechanical effeciecy 

//output
mprintf('the electrical and mechanical effeciencies are %3.0f per cent and %3.1f per cent',ne1,nm)
