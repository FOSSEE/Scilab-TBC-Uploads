clc
//initialisation of variables
T1=(100+273)//Degree C
T2=(300+273)//degree C
T=(1-T1/T2)*100//F
lam=0.41//in
//CALCULATIONS
R=log(T2)-log(T1)//lb/in^2
r=2.849//ratio of compression
//RESULTS
printf('The ideal efficiency and the compression ratio=% f ratio of compression',r)
