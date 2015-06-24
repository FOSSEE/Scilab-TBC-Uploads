
clc
//initialisation of variables
h1=0.9//percent
h2=0.6//percent
t=400//ft per sec
s=0.8//ft
a=20//degree
p=500//ft
r=p*cosd(a)-t//ft
r1=p*sind(a)//ft
j=50000//ft
w=6700//ft lb
e=10.2//ft
t1=778//F
//CALCULATIONS
V=t/s//ft per sec
V1=sqrt(r^2+r1^2)//ft lb
N=w/(e*t1)*100//percent
//RESULTS
printf('The nozzle and blade efficiency=% f percent',N)
