clc;
clear all;
disp("unknown thermal conductivity")
La=250/1000;//m 
Lb=100/1000;//m 
Lc=150/1000;//m 

hhf=25;//W/(m^2*C)
hcf=12;//W/(m^2*C)

kA=1.65;//W/(m*C) 
kC=9.2;//W/(m*C)


thf=1250;// degree C temperature 
t1=1100;// degree C temperature 

q=(thf-t1)*hhf;//W/m^2
disp("W/m^2",q,"rate of heat transfer = ")
//q=(delT)/Rtotal;

//Rtotal =(La/kA)+1/hhf+(Lb/kB)+(Lc/kC)+1/hcf;
//3750(0.289+0.1/kB)=1225;
kB=0.1/0.0355;
disp("W/(m*C)",kB,"thermal conductivity = ")

Rtotal =(La/kA)+1/hhf+(Lb/kB)+(Lc/kC)+1/hcf;
U=1/(Rtotal);
disp("W/(m^2*C)",U,"overall heat transfer coefficient = ")

//q=(tcf-t2)/(La/kA)
t2=t1-q*(La/kA);
disp ("degree C",t2,"t2 = ")

//q=(t2-t3)/(Lb/kB)
t3=t2-q*(Lb/kB);
disp ("degree C",t3,"t3 = ")

//q=(t3-t4)/(Lc/kC)
t4=t3-q*(Lc/kC);
disp ("degree C",t4,"t4 = ")

