clc
//initialisation of variables
d=500//cu tf
p1=14.0//psia
p2=140//psia
t=70//F
n=1.35//ft
w=33000//ft
h=144//ft
H=-41.0//hp
P1=-82.0//hp
P2=-96.0//hp
t1=460//F
p3=44.3//psia
T1=962//R
T2=254//F
h1=53.3//ft
f=0.35/1.35//ft
//CALCULATIONS
P=sqrt(p1*p2)//psia
T=(t1+t)*(p3/p1)^f//R
T3=-2*H//hp
W=(h*p1*d)/(h1*(t1+t))//lb
H1=(W*0.24)*(T2-t)//Btu per min
//RESULTS
printf('The maximum temperatures =% f Btu per min',H1)
