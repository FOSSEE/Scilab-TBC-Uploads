clc
//initialisation of variables
p=5*10^6//ft
Q=350//gpm
x=225//ft
u=10^-2//ft
g=1.87//ft
p2=7*10^2//ft
p3=10.9//ft
w=4.0//ft
t=114.6//ft
d=10//ft
p1=5//ft
w1=3.2*10^4//ft
W=21.75//ft
//CALCULATIONS
T=t*Q*4/p1//gpd/ft
S=u*(w1)/[g*(p)]//ft
U=g*[(S)/(T)]*(x^2/d)//ft
P=t*(p2)*p3/(T)//ft
U1=g*[(S)/(T)]*(1/d)//ft
P1=t*(p2)*W/(T)//ft
//RESULTS
printf('the type curve as if a transparency of the observed data had moved into place over the type=% f ft',P1)
