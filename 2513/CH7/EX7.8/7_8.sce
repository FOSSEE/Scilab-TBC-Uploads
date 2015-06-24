clc
//initialisation of variables
d=163*48.5//cfs
a=48.5//ft
q=100//cfs
Q=45.5*a//cfs
c=0.57//cfs
v=1.8//cfs
p=0.45//ft
//CALCULATIONS
P=d/(q*sqrt(a))//percent
C=Q/(a^0.8*(1+2*a^-0.3))//cfs
d1=2.6//cfs
T=(1-p*c+v*c*2)//cfs
//RESULTS
printf('the meyers rating =% f percent',P)
printf('the magnitude of the maximum peak flood =% f cfs',T)
