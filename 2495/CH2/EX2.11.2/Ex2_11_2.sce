clear
clc
w2=0.011;//amount of barium nitrate in kg
M2=0.2613;//molar mass of barium nitrate inkg/mol
w1=0.1;//amount of water in kg
Kb=5.2;//for 100gm of water in K
m=(w2/M2)/w1;//molality of solution in mol/kg
DelTb_0=Kb/10*m;//in K
T=100.46;//boiling point of water
i=(T-100)/DelTb_0;//van't hoff factor
v=3;
alpha=(i-1)/(v-1);//degree of ionization
printf('alpha=%.2f',alpha)

//page 75

