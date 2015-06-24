//exa 6.5
clc;clear;close;
format('v',6);
kv1=220;//kv
kv2=132;//kv
baseMVA=200;//MVA
//Base impedence in 132 kv circuit
baseZ2=kv2^2/baseMVA;//ohm
z1=%i*75;//ohm
z2=%i*70;//ohm
z3=%i*90;//ohm
z1=z1/baseZ2;//pu
z2=z2/baseZ2;//pu
z3=z3/baseZ2;//pu
X_AD=%i*0.08+z1;//pu//Reactance from A to D
X_BD=%i*0.08+z2;//pu//Reactance from A to D
Zp=z3*X_AD*X_BD/(z3*X_AD+z3*X_BD+X_BD+X_AD);//parallel combination
sc_D=baseMVA/abs(Zp);//MVA//Short Circuit MVA at D
delQBYdelV=sc_D/kv2;//MVA/kv
delQ=delQBYdelV*4;//MVar
disp(delQ,"Var injection at Bus D(MVar) : ");
//Answer in the textbook is not accurate.
