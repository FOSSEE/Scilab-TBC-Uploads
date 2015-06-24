clc
//initialisation of variables
v=2//ft^3
v2=20//ft^3
p=100000//ft lb
v2=10.41//lb/in^2
v3=10//lb/in^2
p1=1.3//lb
p2=(v2*199.5)/9.95//lb/in^2
//CALCULATIONS
P=(p2/v3-v2)//lb/in^2
//RESULTS
printf('The initial andfinal pressure=% f lb/in^2',P)
