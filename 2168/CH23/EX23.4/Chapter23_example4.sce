clc
clear
//Input data
n=4//Number of cylinders
d=0.2//Bore in m
l=0.3//Stroke in m
N=300//Speed in r.p.m
af=5//Air to fuel ratio by volume. In textbook it is given as 4 which is wrong
nv=78//Volumetric efficiency in percent
CV=2200//Calorific value in kcal/cu.m at N.T.P
bth=23//Brake thermal efficiency in percent

//Calculations
Vs=((3.14/4)*d^2*l)//Swept volume in cu.m
c=((nv/100)*Vs)//Total charge per stroke in cu.m
Vg=((c/af)*N)//Volume of gas used per min in cu.m at N.T.P
q=(CV*Vg)//Heat supplied in kcal/min
BHP=((bth/100)*q)/(4500/427)//Brake horse power

//Output
printf('The volume of gas used per min is %3.3f cu.m at N.T.P \n B.H.P of engine is %3.1f',Vg,BHP)
