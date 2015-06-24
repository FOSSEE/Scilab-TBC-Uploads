clc
//initialisation of variables
n=400//rpm
U=6*n//deg/sec
t=150//deg/sec
d=360//degree
a=1.2//mm
//CALCULATIONS
Epl=U/t//deg/sec^2
Fhi=Epl*(t)^2/2//degree
V=Fhi/d//rev
T=(%pi*a*Epl)/d//m/sec^2
//RESULTS
printf('the number of revolution its executed after power=% f rev',T)
