clc
//initialisation of variables
b=6//in
b1=9//in
r1=4//ratio
r2=1//ratio
p=50//lb/in^2
s=300//r p m
e=30//per cent
v=260//C.H.U
a=1.41
h=0.30//in
g=33000//in
g1=1400//in
A=1-(r2/r1)^0.41//lb/in^2
//CALCULATIONS
I=(p*%pi*36/4*9/12*s/2)*1/g//ft^3
X=(I*g)/(g1*v*h)//ft^3
C=X*60/I//ft^3
R=h/A*100//per cent
//RESULTS
printf('The fuel consumption in ft^3/h p hr and the efficiency relative to the air standard cycle=% f percent',R)
