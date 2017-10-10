clc;
clear all;
disp("Thermal conductivity of insulation")
r1=1.5/2;//m
r2=r1+0.1;//m
Lcyl=8-1.5;//m
m=10.8;//kg/h
hv=214;//kJ/kg
Qboil=m*hv;//kJ/h
Qcyl=Qboil/(1+(2*r1*r2*log(r2/r1))/(Lcyl*(r2-r1)));
disp("kJ/h",Qcyl,"Rate of heat in Q =") 
Qcyl=Qcyl/3.6;
disp("J/s",Qcyl,"Rate of heat in Q =")
ti=-183;//degree C
to=27;//degree C
delT=to-ti;
k=Qcyl*(log(r2/r1))/(delT*2*3.1416*Lcyl);// W/(m*C)
disp("W/(m*K)",k,"Thermal conductivity of insulation =") 



