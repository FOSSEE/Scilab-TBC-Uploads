clc
//initialisation of variables
v2=6//lit
v1=2//lit
r=3/2
p1=1.01*10^5//n/m^2
//CALCULATIONS
g=(r+1)/r
p2=p1*(v2/v1)^g
w=(1/(g-1))*((p1*v2*10^-3)-(p2*v1*10^-3))
//results
printf(' \n work done= % 1f J',w)
