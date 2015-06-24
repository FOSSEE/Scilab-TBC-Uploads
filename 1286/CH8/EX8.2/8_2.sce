clc
//initialisation of variables
g=1.4
T1=15+273//k
r=2
p=2//atm
r1=0.5
//CALCULATIONS
T2=T1*r^(g-1)
t2=T1*r1^((g-1)/g)
//results
printf(' \n final temperature= % 1f k',T2)
printf(' \n temperature= % 1f k',t2)
