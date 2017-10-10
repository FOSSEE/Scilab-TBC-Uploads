//Example 7.23
clear;
clc;

//Given
R=0.082;//gas constant in atm dm^3 K^-1 mol^-1
w2=2;//mass of solute in g
M2=12400;//molecular mass of the solute in g mol^-1
T=298;//temperature in K
Kf=1.86;//freezing point depression constant for water
w1=100;//weight of solvent in g
Kb=0.52;//boiling point elevation constant for water
p=24;//vapour pressure of water in mm Hg

//To determine the height attained by water inside the tube and the osmotic pressure
m=(w2/M2)*(1000/w1);//molality in mol kg^-1
delTf=Kf*m;//depression in freezing point in oC
delTb=Kb*m;//elevation in boiling point in oC
pi=m*R*T*760;//osmotic pressure in mm Hg
delp=(0.0016*18*p)/1000;//lowering of vapour pressure in mm Hg
mprintf('The depression in freezing point = %f oC',delTf);
mprintf('\n The elevation in boiling point = %f oC',delTb);
mprintf('\n The osmotic pressure = %f mm Hg',pi);
mprintf('\n The lowering of vapour pressure = %f mm Hg',delp);

//end