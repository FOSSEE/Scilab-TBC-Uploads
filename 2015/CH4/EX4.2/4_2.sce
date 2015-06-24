clc
//initialisation of variables
v=0.1008*10^-2
p1=40 //pressure in bar
p2=0.08 //pressure in bar
wt=903.8 //kj/kg
wp=4.02 //kj/kg
h1=2801 //kj/kg
h3=174 //kj/kg
//CALCULATIONS
pw=v*(p1-p2)
wn=wt-wp
qs=h1-(h3+wp)
reff=wn/qs
wr=wn/wt
//RESULTS
printf('heat supplied is %2f',qs)
printf('\nrankine efficiency and work ratio is %2f and %2f',reff,wr)
