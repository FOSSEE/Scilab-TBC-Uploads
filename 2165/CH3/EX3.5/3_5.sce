clc
//initialisation of variables
w1=4.5//lb
s1=45.5//lb
p1=165//lb/in^2
T=140//Degree C
h1=30//in
h2=4//in
p2=0.49//ln/in^2
T1=(w1+s1)//lb
T2=103.5//Degree C
T3=140//Degree
h3=0.48//in
x=0.988//berfore throttling
T=[103.12+537.1+h3*(T3-T2)]//C.H.U/lb
x1=0.012//lb of water
X=s1*x1//lb water
w=50//lb of steam
//CALCULATIONS
P=h2+h1//in of mercury
P1=s1*x1//lb/in^2
T4=w1+P1//lb
D=(w-T4)/w//lb
//RESULTS
printf('The dryness of steam with a combined=% f lb',D)
