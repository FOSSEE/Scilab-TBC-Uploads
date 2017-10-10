clc;
clear all;
disp("Thickness of brick")
t1=1325;// degree C
t2=1200;// degree C
t3=25 ;// degree C
L=0.32;// m
kA=0.84 ;// W/(m*C)
kB=0.16 ;// W/(m*C)
// q = (t1-t3)/(La/kA +Lb/kB) = (t1-t2)/(La/kA)=(t2-t3)/(Lb/kB)
//(1325-25)/(La/0.84+Lb/0.16)=(1325-1200)/(La/0.84)
//(1325-25)/(La/0.84+(L-La)/0.16)=(1325-1200)/(La/0.84)
//1300/(1.19La+2-6.25La)=105/La
La=210/(1300+531.3);//m
Lb=L-La;//m
disp("mm",Lb*1000,"thickness of insulation is = ")
q=(t1-t2)/(La/kA);// W/m*m
disp("W/m^2",q,"heat loss per unit area is = ")

