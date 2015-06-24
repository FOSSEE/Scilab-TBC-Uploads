clc
clear

//INPUT
p=100*746/4.2;//power developed in cal/sec
t1=300;//temperature of the sink in K
t2=500;//temperature of the source in K

//CALCULATIONS
n=1-(t1/t2);//efficiency of the engine
q1=p/n;//heat supplied in cal/sec
q2=q1*(1-n);//heat rejected to the sink in cal/sec

//OUTPUT
mprintf('the efficiency of the engine is %3.2f \n the heat supplied is %3.2f cal/sec \n the heat rejected is %3.2f cal/sec',n,q1,q2)
