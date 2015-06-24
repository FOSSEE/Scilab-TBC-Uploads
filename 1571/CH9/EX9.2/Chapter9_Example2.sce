clc
clear

//INPUT
t2=273;//temperature of the sink in K
t1=373;//temperature of the source in K
q1=840;//heat supplied in joules
j=4.2;//joukes constant in erg/cal

//CALCULATIONS
w=(q1/t1)*(t1-t2);//work done in joules
q2=(q1/j)*(t2/t1);//heat rejected in calories
n=1-(t2/t1);//efficiency of the engine

//OUTPUT
mprintf('work done is %3.2f j \n heat rejected is %3.2f cal \n the efficiency of the engine is %3.2f',w,q2,n)
