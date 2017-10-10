clc
clear
//INPUT DATA
vs=0.015;//swept volume in m^3
vc=0.0008;//clearence volume in m^3
p3=500;//discharging pressure
p1=100;//air pressure in kPa
m=1.4;//isentropic expansion constant
n=1.3;//polytropic index constant


//CALCULATIONS
v1=vs+vc;//volume in m^3
v4=vc*((p3/p1)^(1/m));//volume in m^3
wn=((n/(n-1))*p1*v1*(((p3/p1)^((n-1)/n))-1))-((m/(m-1))*p1*v4*(((p3/p1)^((m-1)/m))-1));//net work done in kJ
v41=vc*(p3/p1)^(1/n);//volume of absorbing system in m^3
v14=vs-v41;//volume in m^3
wn1=(n/(n-1))*p1*(v14)*((((p3/p1)^((n-1)/n))-1));//net work done in kJ
nd=((wn-wn1)/wn)*100;//percentage in difference in work done

//OUTPUT
printf('(i)Net cycle work is %3.4f kJ \n (ii)Error evolved is %3.4f ',wn,nd)


0



