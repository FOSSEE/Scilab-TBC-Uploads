clc
//initialisation of variables
p1=20//ft
p2=30//ft
w=5//person
s=17800//in
h=1200//in
q=100//in
i=1//in
//CALCULATIONS
S=p1*p2*i*s/(h*w)//gpcd
P=(q*p1*p2/S)//percent
//RESULTS
printf('the degree of separation of stormwater=% f percent',P)
