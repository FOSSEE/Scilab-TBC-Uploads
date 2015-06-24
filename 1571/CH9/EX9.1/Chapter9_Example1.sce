clc
clear

//INPUT
t2=300;//temperature of the sink in K
n1=0.4;//efficiency of the engine
n2=0.6;//efficiency of the engine

//CALCULATIONS
t1=t2/(1-n1);//temperature of the source in K
t3=t2/(1-n2);//temperature of the source in K

//OUTPUT
mprintf('the temperature of the source when 0.4 efficiency is %3.2f K \n the temperature of the source when 0.6 efficiency is %3.2f K',t1,t3)
