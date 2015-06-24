clc
//initialisation of variables
a=50//degree c
v=2000//ft/sec
p=800//ft/sec
b=20//Degree C
v1=0.9//in^2
v2=513//ft/sec
W=(1/32.2)*[1810-(-313)]*p//ft/lb lb stream /sec
K=(v^2)/(2*32.2)//ft/lb sec
//CALCULATIONS
D=(W/K)*100//percent/lb
//RESULTS
printf('the work done per lb=% f percent/lb',D)
