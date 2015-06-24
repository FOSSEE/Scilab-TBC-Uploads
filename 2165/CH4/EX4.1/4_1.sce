clc
//initialisation of variables
p=90//lb/in^2
x1=0.9//lb
p1=10//lb/in^2
x2=0.81//lb
s1=161.5//lb.in^2
s2=89.1//lb.in^2
L1=496.8//lb.in^2
L2=545.5//lb.in^2
//CALCULATIONS
bc=(s1-s2)+(x1*L1)//C.H.U/lb
da=x2*L2//C.H.U/lb
W=bc-da//C.H.U/lb
R=W/bc*100//percent
//RESULTS
printf('the work done per =% f percent',R)
