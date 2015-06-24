clc
//initialisation of variables
t1=323 //temparature in k
t2=362.8 //temparature in k
c1=300 //velocity in m/s
c2=100 //velocity in m/s
cp=1.005 //kj/kgk
p1=10 //pressure in bar
p3=14 // pressure in bar
g=1.4
//CALCULATIONS
tx=t1+((c1)^2/(2*cp*1000))
po1=p1*(tx/t1)^(g/(g-1))
po2=p3*(tx/t2)^(g/(g-1))
tpr=po2/po1
rrr=(po2-p1)/(po1-p1)
//RESULTS
printf('total pressure ratio and ram recovery ratio are %2f and %2f',tpr,rrr)
