clc;
clear all;
disp("interface temperature")
La=0.12;//m 
Lb=0.12;//m 
Lc=0.012;//m 

hcf=18;//W/(m^2*C)

kA=1.6;//W/(m*C) 
kB=0.3;//W/(m*C) 
kC=0.14;//W/(m*C)

Rair=0.16;//K/W

thf=1090;// degree C temperature 
tcf=20;// degree C temperature 

Rtotal =(La/kA)+Rair+(Lb/kB)+(Lc/kC)+1/hcf

q=(thf-tcf)/Rtotal;

disp("W",q,"rate of heat flow per m^2 surface area = ")


//q=(thf-t2)/(La/kA)
t2=thf-q*(La/kA);
disp ("degree C",t2,"t2 = ")

//q=(t2-t3)/(Rair)
t3=t2-q*(Rair);
disp ("degree C",t3,"t3 = ")

//q=(t3-t4)/(Lb/B)
t4=t3-q*(Lb/kB);
disp ("degree C",t4,"t4= ")


//q=(t4-t5)/(Lc/kC)
t5=t4-q*(Lc/kC);
disp ("degree C",t5,"t5 = ")

