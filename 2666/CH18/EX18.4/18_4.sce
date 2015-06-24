
clc
//initialisation of variables
f=18385//Btu per lb of fuel
m=925//Btu per lb
w=0.0159//ft
p=0.60//percent
h1=126.70//Btu per lb
h2=240.36//Btu per lb
hx=194.9//ft
w1=0.0119//lb fuel per lb air
q=1.0119//Btu per lb
p1=0.98//in
p2=28.77//ft
s=19800//ft in
g=398.47//ft
//CALCULATIONS
T=(q*(g-h2)*p1-(h1-p2)/p1)/(w1*s)*100//percent
//RESULTS
printf('the thermal efficency=% f percent',T)
