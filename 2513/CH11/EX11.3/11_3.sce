clc
//initialisation of variables
w=40//ft
k=2*10^-3//cm/sec
p=3.28*10^-3//cfs
h=6.47*10^5//gpd
p1=0.433//ft
m=9//ft
delh=w/(18*9)//in
k1=4.94*10^-4//cm/sec
//CALCULATIONS
Q=k*p*w*(9/18)//cfs
Q1=Q*h//gpd/ft width
P=(1-8/18)*w*p1//Psig
H=k1/k//in
//RESULTS
printf('the seepage through each foot width of the foundation=% f gpd/ft/ width',Q1)
printf('the excess hydrostatic pressure on the upstream  side of the bottom of the sheet pilling=% f Psig',P)
printf('the maximum hydraulic gradient and its relations to the coeeficent=% f in',H)
