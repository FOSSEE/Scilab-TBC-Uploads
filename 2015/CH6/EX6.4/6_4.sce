clc
//initialisation of variables
sp=1500 //rotational speed of an impulse turbine wheel in revolutions
pi=(22/7)
dm=1.5 //diameter in m
ra=0.8 //ratio of blade speed to steam speed
x=159 //x=cwi-cwo in m/s
m=10 //kgs mass
cf=50.4 //m*m*m/kg
vs=1.159 //
//CALCULATIONS
u=(pi*dm*sp)/60
ci=u/ra
pd=(m*x*u)/1000
a=(m*vs)/cf
h=a/(pi*dm)
//RESULTS
printf('power developed for steam flow is %2fkw',pd)
printf('\nheight of the blade is %2fm',h)
