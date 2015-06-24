clc
//initialisation of variables
D=2000//mm
a=12.5//mm
t=5//seconds
t1=360//degree
q=9000//degree
v=1000//m
//CALCULATIONS
Fhi=t1*a//Degree
epl=q/(t)^2//degree/sec^2
U=t1*t//deg/sec
V=U/t1//rev/sec
V1=(%pi*D*t)/v//m/sec
//RESULTS
printf('the velocity corresponds peripheral velocity at that moment=% f m/sec',V1)
