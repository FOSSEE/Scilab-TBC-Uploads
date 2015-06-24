clc
//initialisation of variables
d=30.0//mgd
a=40.0//sq miles
a1=1500//acres
r1=47.0//in
r2=27.0//in
q=0.9//in
k=640//in
h=0.052//gpd/sq mile
//CALCULATIONS
Q=r2-(r2+a-r1)*q*a1/(k*a)//in
D=d+a*h//mgd
A=a-(q*a1/k)*[1-(r1-a)/(r2)]//sq miles
R=r2+a-r1//in
S=R*q//in
//RESULTS
printf('the revised mean annual runoff=% f in',Q)
printf('the equivalent mean draft=% f mgd',D)
printf('the equivalent land area=% f sq miles',A)
printf('the adjusted flowline=% f in',S)
