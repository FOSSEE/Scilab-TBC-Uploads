clc
//initialisation of variables
w=0.066//ft^3
p=14.7//lb/in^2
w1=14.2//lb/in^2
w2=2780//lb/in^2
g=0.038//lb
a=28.9//lb
R=w2/w1//for gas
R1=93//for air
T=273//F
V=0.4245//ft^3
//CALCULATIONS\
W=(p*144*w)/(T*R)//lb
m=(g-W)//lb gas
T2=(V+w)//ft^3
//RESULTS
printf('The volume of mixture=% f ft^3',T2)
