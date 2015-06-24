clc
//initialisation of variables
h1=2724.7 //kj/kg under 3 bar pressure
s1=6.991 //kj/kgk under 3 bar pressure
sf2=1.530 //kj/kgk
sfg2=5.597 //kj/kgk
hf2=504.7 //kj/kg
hfg2=2201.6 //kj/kg
vg2=0.8854
a2=3*10^-4 //area in m*m
v1=0.6056 //m*m*m/kg
p1=3 //bar
p2=2 //bar
n=1.3
t1=406.54 //temparature in k
ps=0.917 //bar
v2=0.8273 //m*m*m/kg
//CALCULATIONS
x2=(s1-sf2)/(sfg2)
h2=hf2+(x2*hfg2)
v2=x2*vg2
c2=44.72*(h1-h2)^(0.5)
m1=a2*c2/v2
v2=v1*(p1/p2)^(1/n)
c3=((-2*n/n-1)*p1*v1*((p2/p1)^((n-1)/n)-1))^0.5*543.53
m2=a2*c3/v2
t2=t1*(p2/p1)^((n-1)/n)
de=2/ps
//RESULTS
printf('mass flow rate is %2f',m2)
printf('\ndegree of super saturation is %2f',de)
