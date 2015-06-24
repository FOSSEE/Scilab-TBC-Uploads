clc
//initialisation of variables
n=180//rpm
a=420//mm
h=a/8//mm
w=60*n*12//sec
b=5//mm
p=20//m
v=30//m
r=50//mm/sec
d=28.5//mm
//CALCULATIONS
D=b*p/v//mm
D1=d*r//mm/sec
//RESULTS
printf('the legth of crank =% f mm/sec',D1)
