clc
//initialisation of variables
p=20//psia
t=240//F
v=6//cu ft
p1=80//psia
v2=2.23//cu ft
h=144//ft
t1=778//F
w=53.35//ft lb
t2=700//F
w1=0.1715//lb
//CALCULATIONS
W=(h*(p1*v2-p*6))/(1-1.4)//ft-lb
U=-(W/t1)//Btu
W1=(h*p*v)/(w*t2)//lb
T=t2*(p1/p)^0.2857//R
U2=W1*w1*(T-t2)//Btu
//RESULTS
printf('The change in intrinsic energy=% f Btu',U2)
