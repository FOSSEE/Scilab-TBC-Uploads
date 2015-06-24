//Exa 6.27
clc;
clear;
close;
format('v',7);

//Given Data :
ms=5;//Kg
m2=140;//Kg
p=10;//bar
mc=20;//KJ/K
t1=20;//degree C
mwdot=20;//Kg
t2=40;//degree C
Cpw=4.19;//KJ/KgK
hfg=2021.4;//KJ/Kg(at 10bar)
ts=179.88;//degree C
//ms*(x*hfg)+ms*Cpw*(ts-t2)=m2*Cpw*(t2-t1)+mc*(t2-t1)
x=(m2*Cpw*(t2-t1)+mc*(t2-t1)-ms*Cpw*(ts-t2))/ms/hfg;//dryness
disp(x,"Dryness fraction of steam : ");
//Steam table is used to get some data.
