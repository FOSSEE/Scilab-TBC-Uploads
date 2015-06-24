clc
//initialisation of variables
p1=280//lb/in^2
v=2//ft^3
p2=20//lb/in^2
v2=18.03//ft^3
//CALCULATIONS
W=144*(p1*v-p2*v2)/(1.2-1)//ft/lb
//RESULTS
printf('The volume and work done during the expansion=% f ft/lb',W)
