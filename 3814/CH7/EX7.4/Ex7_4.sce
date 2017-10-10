//determine the mean speed of turbine
// ex 7.4 pgno.174 
clc
p=60e6 // power
h=40// meter
no=0.85 // overall efficiency
x=0.5 // flow ratio 
g=9.8 
Ku=1.6 // speed ratio
Q=p/(9800*no*h) // flow in kaplan turbine
mprintf('\n Q = %d m3/s',Q)
Vf=x*sqrt(2*g*h) // velocity of flow
mprintf('\n Vf = %d m/s',Vf)
d1=(%pi*(1-(0.35^2)))/4
d=d1*Vf // diameter
df=sqrt(180/d)
mprintf('\n D1 = %f m',df)
dh=0.35*df 
mprintf('\n Dh = %f m',dh)
D=(dh+df)/2 // mean diameter 
mprintf('\n mean diameter D= %f m',D)
N=(Ku*sqrt(2*g*h)*60)/(%pi*D) //rotational speed 
mprintf('\n N = %f rev/min',N)
