clc
//initialisation of variables
a=94//percent
p=14.7//psia
w=1.7566//ft
q=1.4892//ft
s=14446//ft
h1=1150.4//ft
t=970.3//ft
p1=1208.8//ft
g=0.06//in
h2=223.8//ft
v=22.25//cu ft per lb
a1=5.84//lb per sec
//CALCULATIONS
H=(w-q)/s*10000//ft per sec
H1=h1-(H*t)//ft
E=p1-H1//in
W=H1+g*E//cu ft per lb
N=h2*sqrt(p1-W)//ft per sec
M=a1*(v)*(144)/N//sq in
//RESULTS
printf('the exit area for the nozzle=% f sq in',M)
