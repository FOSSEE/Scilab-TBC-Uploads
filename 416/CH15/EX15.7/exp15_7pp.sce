clc
clear
disp("example 15.7")
ws=20 //wind speed
rd=10 //rotor diameter
ros=30 //rotor speed
ad=1.293 //air density
mc=0.593 //maximum value of power coefficient
p1=0.5*ad*(%pi)*(rd^2)*(ws^3)/4 //power
p=p1/10^3
pd=p/((%pi)*(rd/2)^2)  //power density
pm=p*(mc)  //maximum power
mt=(pm*10^3)/((%pi)*rd*(ros/60))
printf("power %.fkW \n power density %.3fkW/m^3 \nmaximum power %fkW \n maximum torque %.1fN-m",p,pd,pm,mt)