clc
clear

//INPUT
t1=90;//temperature of the oxygen boils in K
t2=20;//temperature of the liquid hydrogen in K
t3=300;//temperature of the sink in K

//CALCULATIONS
n=(t1-t2)/t1;//efficiency of the engine
t4=t3/(1-n);//temperature of the source in K

//OUTPUT
mprintf('the efficiency of the engine is %3.2f \n the temperature of the source is %3.2f K',n,t4)
