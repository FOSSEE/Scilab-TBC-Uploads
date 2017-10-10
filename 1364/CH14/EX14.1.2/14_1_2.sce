clc
//initialisation of variables
w= 48 //ft/sec
u= 60 //ft/sec
g= 32.2 //ft/sec^2
hm= 5.5 //ft
Ws= 100 //ft
Wi= 94.5 //ft
hc= 21 //ft
hi= 5 //ft
//CALCULATIONS
Wo= w*u/g
nm= 1-(hi/Ws)
nh= 1-((hc+hi)/Wi)
no= nm*nh
//RESULTS
printf (' Hydraulic efficiency= %.3f ',nh)
printf (' \n Hydraulic efficiency= %.3f ',no)