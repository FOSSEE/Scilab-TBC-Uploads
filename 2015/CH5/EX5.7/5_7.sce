clc
//initialisation of variables
p1=5 //pressure in bars
h1=2709 //kj/kg
h2=2649.5 //kj/kg
v2=0.6059 //volume flowrate in m*m*m/kg
m=2 //mass  in kg
v3=6.5098 //volume flowrate in m*m*m/kg
h1=2714.0 //kj/kg
h2=2649.5 //kj/kg
h3=2247.4 //kj/kg
eff=0.9 //efficiency
//CALCULATIONS
p2=0.578*p1
c2=44.72*(h1-h2)^(0.5)
a2=m*v2/c2
x=eff*(h1-h3) //x=h1-h3
c3=44.72*(x)^(0.5)
a3=m*v3/c3
//RESULTS 
printf('velocity and area at throat are %2fm/s and %2fm*m',c2,a2)
printf('\nvelocity and area at exit are %2fm/s and %2fm*m',c3,a3)
