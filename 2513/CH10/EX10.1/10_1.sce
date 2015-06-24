clc
//initialisation of variables
w1=1000//ft
w2=2000//ft
r=700//gpm
d=10//days
q=2//ft
u=1.87*[(3.4*10^-5)/(3.2*10^4)]*(d^6/d)//ft
W=7.94//ft
p=114.6*(7*10^2)*W/(3.2*10^4)//ft
U=1.87*[(3.4*10^-5)/(3.2*10^4)]*(4*d^6/d)//ft
Wu=6.55//ft
P=114.6*(7*10^2)*Wu/(3.2*10^4)//ft
R=54//ft
//CALCULATIONS
W1=R+p+P//ft
D=R+q*p//ft
//RESULTS
printf('the expected drawndown the first well is pumped at a rate=% f ft',W1)
printf('the drawdown in each well all the three are pupped at a rate=% f ft',D)
