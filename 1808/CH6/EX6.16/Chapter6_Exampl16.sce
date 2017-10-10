clc
clear
//INPUT DATA
t1=293;//temperature in K
t21=363;//temperature in K
t3=308;//temperature in K
t41=273;//temperature in K
p1=1;//compressor pressure in bar
p2=2;//turbine pressure in bar
g=1.4;//constant
cp=1.005;//specific pressure
m=1;//mass of air
N=350;//speed in rpm
R=0.287;//gas constant
nv=0.9;//volumetric efficiency in percentage


//CALCULATIONS
t2=t1*((p2/p1)^((g-1)/g));//temperature in K
nc=(((t2-t1)/(t21-t1)))*100;//compressor efficiency in percentage
t4=t3*((p1/p2)^((g-1)/g));//temperature in K
nt=(((t3-t41)/(t3-t4)))*100;//turbine efficiency in percentage
Qa=cp*(t1-t41);//Refrigeration effect
m1=30*210/Qa;//mass flow rate of air in kg/min
wn=cp*(m1/60)*((t21-t1)-(t3-t41));//power input in kW
cop=Qa*m1/(wn*60);//COP
v1=m*R*t1/(p1*10^2);//volume in m^3/kg
vs=v1/nv;//swept volume in m^3/kg
d=(4*vs/(3.14*1.5*N))^(1/3);//diameter of compressor in m
l=1.5*d;//compressor length in m

//OUTPUT
printf('(i)The compressor efficiency is %3.2f percentage \n (ii)Turbine efficiency is %3.2f percentage \n (iii)Refrigeration effect %3.2f kJ/kg \n (iv)power input is %3.2f kW \n (v)COP is %3.3f \n (vi)compressor diameter is %3.4f m \n   length %3.3f m',nc,nt,Qa,wn,cop,d,l)












