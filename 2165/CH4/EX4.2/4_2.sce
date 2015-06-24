clc
//initialisation of variables
h=1600//i.h.p
h1=20000//lb
h2=230//lb/in^2
T1=293.3//Degree C
x=25.91//in
v=30//in
T2=201//Degree C
T=T1-T2//degree C
x2=0.845//lb
L2=566.51//lb
s1=724//lb
h3=1400//C.H.U/hr
x=33000//ft^3
//CALCULATIONS
H=671.48//C.H.U/lb
ea=x2*L2//C.H.U/lb
W=H-ea//C.H.U/lb
R=W/H*100//percent
S=h2*s1//C.H.U
I=[(h*x*60)/(h3*h1*s1)]*100//percent
R1=I/R*100//pecent
//RESULTS
printf('The indicated thermal efficiency ratio=% f percent',R1)
