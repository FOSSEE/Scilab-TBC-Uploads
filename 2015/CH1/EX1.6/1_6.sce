clc
//initialisation of variables 
t1=300 //temparature in k
r=10 //compression ratio
p1=1 //pressure in bar
g=1.4 
p3=40 //pressure in bar
x=0.166 //x=v4/v5=t4/v1=(v4/v2)*(v2/v1)
t4=2000 //temparature in k
p4=40 //pressure in bar
cv=0.718 //calorific value(const volume)
cp=1.005 //calorific value(const preussure)
R=0.287
r=10
//CALCULATIONS
t2=(t1*(r)^(g-1))
p2=(p1*(r)^(g))
t3=t2*(p3/p2)
t5=t4*(x)^(g-1)
p5=p4*(x)^(g)
q23=cv*(t3-t2)
q34=cp*(t4-t3)
q44=cv*(t5-t1)
nwd=q23+q34-q44
ef=nwd/(q23+q34)
v1=(R*t1)/(p1*100)
v2=v1/r
mep=nwd/(v1-v2)
effo=1-(1/(r)^(g-1))
v3=(R*t4)/(p2*100)
cr=v3/v2
effd=1-((1/(r)^(g-1))*(1/g)*((cr)^(g)-1)/(cr-1))
//RESULTS
printf('temparature 2,3,5 and pressure 2,5 are %2fk,%2fk,%2fk and %2fbar,%2fbar',t2,t3,t5,p2,p5)
printf('\nheat supplied at const volume is %2fkj/kg/cycle',q23)
printf('\nheat supplied at const pressure is %2fkj/kg/cycle',q34)
printf('\nnet work output is %2f',nwd)
printf('\nefficiency is %2f',ef)
printf('\notto efficiency is %2f',effo)
printf('\ndiesel efficiency is %2f',effd)
