clc
//initialisation of variables
h=0.2//ft^3
v=10//percent
T=15//degree c
p=30//lb/in62
t1=15//Degree C
p1=60//lb/in^2
v1=2.2//ft^3
v3=0.328//ft^3
A=(v1-v3)//ft^3
v2=1.341//ft^3
V=v2-h//ft^
t2=288//Degree C
//CALCULATIONS
T2=(t2*p*v2)/(t1*v1)//Degree C absolute
v5=(t2/T2)*V//ft^3
v7=0.164//ft^3
v8=v5-(v7/11)*v5
v6=v8/(1-v7/11)//ft^3
//RESULTS
printf('The required volume of the H.P cylinder including clearance=% f ft^3',v6)
