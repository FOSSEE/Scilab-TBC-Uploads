clc
clear

//INPUT
y=1.4;//coefficent of expansion
t1=600;//intial temperature in K
dv=1/6;//ratio of intial to final volume
p=12*1.013*10^6;//pressure in dyne/sq.cm
v=1000;//intial voluume in cc

//CALCULATIONS
t2=t1*(dv)^(y-1);//final temperature in K
r=(p*v)/t1;//universal gas constant in ergs/kg.K
w=r*(t1-t2)*log(1/dv);//work done in ergs
n=1-(t2/t1);//efficiency of the engine

//OUTPUT
mprintf('the lowest temperature is %3.2f K \n work done is %3.2f ergs \n the efficiency of the engine is %3.2f',t2,w,n)
