clc
//initialisation of variables
p=9.5//lb
p1=120//lb
e=0.88//in
p2=80//lb/in^2
d=25//in
d1=0.125//in
t=14//degree C
T=e*19//C.H.U/lb
D=0.975//in
V=sqrt(2*32.2*1400*T)//ft/sec
S=5.467//ft^3
//CALCULATIONS
V1=p*S*D//ft^3
T1=(V1*144/V)//in^2
C=25*%pi//in
N=C/2.5//in
P=C/31//in
W=d1/sind(t)//in
L=P-W//in
W1=L*sind(t)//in
T2=(T1)/(31*W1)//in
//RESULTS
printf('The number of nozzles their breadth and heigh=% f in',T2)
