clc
//initialisation of variables
p1=80//lb/in^2
p2=20//lb/in^2
//CALCULATIONS
P=sqrt(p1*p2)//lb/in62
V=P/p1//stroke
W=p2/P//stroke
//RESULTS
printf('the ratio of cut off to length of stroke=% f stroke',W)
