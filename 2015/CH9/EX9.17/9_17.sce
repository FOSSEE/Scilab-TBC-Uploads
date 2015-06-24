
clc
//initialisation of variables
p2=6 //prressure in bar
p1=1 //pressure in bar
t1=313 //temp in k
a1=45 //angle in degrees
a2=10 //angle in degrees
a3=55 //angle in degrees
r=1.4
cp=1.005 //kj/kg
ieff=0.85 //isentropic efficiency
c=200 //m/s
//CALCULATIONS
t2s=(t1*(p2/p1)^((r-1)/r))
t2=(((t2s-t1)/ieff)+t1)
w=cp*(t2-t1)
cro=(c*(sin(45*(%pi/180))/sin(55*(%pi/180))))
cv=c-cro
n=w/cv
//RESULTS
printf('actual work is %2fkj/kg',w)
printf('\nchange in whirl velocities is %2fkj/kg/stage',cv)
printf('\nnumber of stages is %2fstages',n)
