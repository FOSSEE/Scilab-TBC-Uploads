clc
clear
//Initialization of variables
FR=25
FE=19
bf=130 //kg
af=85 //kg
//calculations
law=FR/FE
x1=45/150
x2=65/150
ER=18.5/6
e=[0.5 0.1 0.9]
r=[0.28 0.96 0.04]
et=sum(e)
rt=sum(r)
ett=e/et
rtt=r/rt
//results
disp("the compositions of raffinate are ")
disp(rtt)
disp("the compositions of extract are")
disp(ett)
