 clc
//initialisation of variables
a=250//mm
z1=5//m
z2=20//m
v=0.8//m/sec
n=0.75//m
p=35//kg
m=14//m
h=220//mm
n1=30.5//rpm
q=1/16//mm
mz=14*5//mm
//CALCULATIONS
H=(%pi*m*z1*n1)/(16)//mm
t=h/H//min
M=(p*a)/(q)*0.75//kg-mm
Q=(2*p*a*16*0.75)/(mz)//kg
//RESULTS
printf('The kinematic diagram of a rack-type jack=% f kg',Q)
