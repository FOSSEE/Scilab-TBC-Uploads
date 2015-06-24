clc
//initialisation of variables
p2=3.24 //pressure in bar
p1=1 //pressure in bar
v1=16 //volume in m*m*m
n=1.35
rp=3.24 //pressure
r=10.5
t1=294 //temparature in k
t2=294 //temparature in k
cp=1.005 //kj/kg 
rx=0.287
//CALCULATIONS
w1=(2*n/(n-1))*p1*v1*100*0.35630 //(3.24)^0.2592-1
w2=(n/(n-1))*p1*v1*100*0.8396 //(10.5)^0.2592-1
pr1=w1/60
pr2=w2/60
tb=t1*(r)^(n-1/n)
t3=t2*(rp)^((n-1)/n)
m=(p1*v1*100)/(rx*t1)
hr=m*cp*(t3-t2)
ma=hr/(4.18*25)
//RESULTS
printf('minimum power required are %2fkw and %2fkw',pr1,pr2)
printf('\nmass of air compressed is %2fkg/min',m)
printf('\nheat rejected by air compressor is %2fkj/min',hr)
printf('\nmass of water is %2fkg/min',ma)

