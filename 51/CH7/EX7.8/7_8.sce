clc;
clear;
w=20;//m
Q=125;//(m^3)/s
ratio=1/15;
t=24;//hours
wm=ratio*w;//m
//Vm/(gm*lm)^0.5 = V/(g*l)^0.5
//gm=g
//Q=VA and lm/l=1/15
//hence Qm/Q = ((lm/l)^0.5)*((lm/l)^2) = ratio^2.5
Qm=(ratio^2.5)*Q;
//V=l/t
//tm/t=(V/Vm)*(lm/l)=ratio^0.5
tm=(ratio^0.5)*t;//hours
disp("m",wm,"The required model width=") 
disp("(m^3)/s",Qm,"The required model flowrate=")
disp("hrs",tm,"The operating time for the model=")
lrat=0.01:0.01:0.5;
count=1;
for i=0.01:0.01:0.5
    tmodel(count)=(i^0.5)*t;
    count=count+1;
end
plot2d(lrat,tmodel,rect=[0,0,0.5,20])
xtitle("tm vs lm/l","lm/l","tm, hr") 
