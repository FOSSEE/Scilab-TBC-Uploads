clc
//initialisation of variables
h2=1472.6 //kj/kg
s2=4.898 //kj/kgk
sf1=0.510 //kj/kgk
sfg1=5.504 //kj/kgk
hf1=126.2 //kj/kg
hfg1=1304.3 //kj/kg
h4=362.1 //under 38 degrees in kj/kg
h2=1472.6 //kj/kg
h3=362.1 //under 38 degrees in kj/kg
t1=261 //temp in k
t2=311 //temp in k
//CALCULATIONS
x1=(s2-sf1)/sfg1
h1=hf1+(x1*hfg1)
re=h1-h4
w=h2-h1
cop=re/w
hr=h2-h3
ca=(2*re*50)/(3600*3.5164)
pom=100*w/3600
ccop=t1/(t2-t1)
rff=cop/ccop
//RESULTS
printf('coefficient of performance is %2f',cop)
printf('\nheat rejected in the condenser is%2fkj/kg',hr)
printf('\nrefrigerating effect is%2fkj/kg',re)
printf('\ncapacity of motor is%2frons of refrigeration',ca)
printf('\npower of motor is %2fkw',pom)
printf('\nrefrigerating befficiency is %2f',rff)
