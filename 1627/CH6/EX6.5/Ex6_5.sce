clc
//initialisation of variables
v=4*10^-7//m^2/s
t=1/60//min/s
v1=4.3*10^-6//ft^2/sec
q=10*10^-2
p=300//m
p1=1000*10^-3//m^3
r1=0.000046//m
w=0.10//m
f=0.0175//m
g=9.8//m/s^2
v3=2.02//m/s
p2=20//m
//CALCULATIONS
V1=(4*(p1)*t)/((%pi)*(q)^2)//m/s
Nr=(V1)*(q)/(v)
R=r1/w
hf=(f*p*(v3)^2)/(q*2*g)//m
ha=p2+(V1^2)/(2*g)+hf//m
//RESULTS
printf('The pressure at the pump outlet to maintain the flow secified is=% f m',ha)
