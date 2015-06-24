
clc
//initialisation of variables
v=20//cu ft
a=14.7//ft
v1=200//psi 
t=500//F
n=30//cu ft
n1=120//psi
t1=300//F
p=12//cu ft
t2=200//F
B=1545//F
p=538//psia
//CALCULATIONS
O=144*(a+v1)*v/(B*(t+460))//mol
N=144*(a+n1)*n/(B*(t1+460))//mol
T=(O+N)*B*(v1+460)/12//lb per sq abs
P=p*(O/(O+N))//psia
P1=p*(N/(O+N))//psia
//RESULTS
printf('The total pressure=% f psia',P1)
