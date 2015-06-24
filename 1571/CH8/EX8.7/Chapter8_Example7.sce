clc
clear

//INPUT
y=1.4;//coefficent of exapnsion
p1=1;//standard pressure in atm
dv=50;//ratio of initial volume to final volume
t1=273;//standard temperature in K

//CALCULATIONS
p2=p1*dv;//final pressure when slowly compressed in atm
p3=p1*(dv)^(y);//final pressure when suddenly compressed in atm
t2=t1*(dv)^(y-1);//rise in temperature when it is suddenly compressed in K

//OUTPUT
mprintf('the final pressure when it is compressed slowly is %3fatm \n the final pressure when it is compressed suddenly is %3.2fatm \n the rise in temperature when it is suddenly compressed is %3.0fK',p2,p3,t2)
