clc;
clear all;
disp("minimum thickness")
r1=80/2;//mm 
k=0.2;// W/(m*C)
L=25;//m
t2=25;// degree C
tsat=217.2;// degree C corresponding to 22 bar pressure
t1=tsat;
hfg=1868.1;// kJ/kg from steam tables
dfi=0.99;// dryness factor of entering steam
dfo=0.97;// dryness factor of outgoing steam

Q=(dfi-dfo)*hfg;// heat loss per kg of steam passing through the pipe
Qloss=Q*800/3600;//total heat loss through the pipe per second
disp("W",Qloss*1000,"total heat loss through the pipe per second")

//Qloss=2*3.1416*L*k*(t1-t2)/1og (r2/r1);
X=2*3.1416*L*(t1-t2)*k
r2=r1*exp(X/(Qloss*1000))
t=r2-r1;
disp("mm",t,"mimimum thickness of insulation =")



