clc
//initialisation of variables
p=120//lb/in^2
h=30//in
t=48//degree C
C=1000//lb
t1=26//degree C
m=2.2//percent
g=18//lb
f=127//lb
j=33000//in
q=1400//in
L=0.978*8000//C.H.U
b=50//in
t2=320//degree C
g1=0.24//in
d=0.90//in
a=0.4912*30//lb/in^2
P=p+a//lb/in^2 abs
T=178.62+d*483.45//C.H.U/lb
//CALCULATIONS
Wt=C/f//lb
H=Wt*(T-t)//C.H.U
F=0.022*(638.9+0.48*220-t1)//C.H.U
G=g*0.24*(t2-t1)//C.H.U
E=H/L*100//percent
E1=b*j*60/(L*f*q)*100//percent
//RESULTS
printf('the heat balance for the boiler and find its efficiency and the overall efficiency of the plant=% f percent',E1)
