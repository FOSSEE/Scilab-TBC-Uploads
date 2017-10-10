clc; 
clear all; 
disp("minimum thickness of insulation")
r1=25*10^(-3);//m 
r2=(55/2)*10^(-3);//m 
t2=300;// degree C
t3=100;// degree C
kA=20;// W/(m*C) 
kB=0.02;// W/(m*C)
Ql=600;// W/m
//Ql=2*3.1416*(t2-t3)/((log (r3/r2))/kB);
X=2*3.1416*(t2-t3)*kB;
Y=X/Ql;
r3=r2*exp(Y);
//r3=r2*exp((Ql/kB)/(2*3.14*(t2-t3))); 
r3 = 0.1*ceil(r3*10000)
disp("mm",r3,"radius =")
t = r3-r2*1000
r1 = r1*1000;
r2 = r2*1000;
disp("mm",t,"minimum thickness of insulation required t =")
//Ql=2*3.1416*(t1-t2)/((log (r2/r1))/kA);
t1=Ql*(log (r2/r1)/kA)/(2*3.1416)+t2;
disp("degree C",t1,"temperature of inside surface of pipe =")
