clear
clc
m1=0.5126;//in dissolved mass in gm
mM1=128.2;//molar mass of napthalene in gm
m0=50;//mass of solvent in gm
B=(m1/mM1)/(m0/1000);//Molality of solution in mol/kg
printf('B=%.5f mol/kg',B)
delTb=0.402;//change in tempereature of napthalene in K
Kb=delTb/B;
delTbs=0.647//chamge in temp for unknown solution in K
m2=0.6216;//mass of unknown solute
M=(Kb*m2*1000)/(delTbs*m0);//molar mass of unknown solute
printf('\nM=%.2f gm/mol',M)

//page 51

