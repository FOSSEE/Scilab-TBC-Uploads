clc
clear
//INPUT DATA
c=0.04;//clearance volume
p1=0.98;//pressure in bar
p2=7;//pressure in bar
n=1.3;//constant for cylinder
pa=1.013;//ambient pressure in bar
x=1.3;//stroke to bore ratio
va=0.25;//volume in m^3/sec
ta=300;//ambient temperature in K
t1=313;//temperature in K

//CALCULATIONS
nv=(1+c-c*((p2/p1)^(1/n)))*100;//volumetric efficiency in percentage
v14=(pa-va)*t1/(p1*ta);//volume in m^3/sec
vs=v14/nv;//swept volume in m^3/sec
l=(0.03141*4/(3.14*9))^(1/3);//stroke length in m
d=3*l;//bore length in m
ip=(n/(n-1))*p1*10^2*(v14)*(((p2/p1)^((n-1)/n))-1);//indicated power in kW

//OUTPUT
printf('(i)Volumetric efficiency is %3.2f percentage \n (ii)Cylinder dimensions \n l= %3.4f m \n d= %3.3f m \n (iii)Indicated power %3.3f kW',nv,l,d,ip)


