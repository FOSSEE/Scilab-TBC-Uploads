clc
clear

//input
ra=0.08;//armature resistance of a d.c. series generator in ohms
rf=0.1;//feild resistance of a d.c. series generator in ohms
il=50;//load current in amperes
e=250;//e.m.f. generated in volts

//calculations
R=ra+rf;//total resistance of machine in ohms
pd=e-(il*R);//terminal p.d. in volts
p=pd*il;//power output in watts
P=p/1000;//power output in kilo watts

//output
mprintf('the power output of the generator is %3.2f kW',P)
