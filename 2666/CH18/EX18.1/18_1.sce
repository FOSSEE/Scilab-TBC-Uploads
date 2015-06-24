clc
//initialisation of variables
r=6//ratio
p1=28.77//ft
p2=126.70//ft
p3=398.47//ft
p4=240.36//ft
v=19800//btu per lb
w=0.0159//ft
m=0.98//percent
s=1.0159//Btu per lb
//CALCULATIONS
E=(s*(p3-p4)*m-(p2-p1)/m)/(w*v)*100//percent
//RESULTS
printf('the actual thermal efficiency of a gas turbine=% f percent',E)
