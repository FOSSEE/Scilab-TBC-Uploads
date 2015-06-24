clc
//initialisation
t1=273//k
p1=1*10^5//N/m2
p2=2*10^5//N/m2
v=10^-6//m3
a=2.73*10^-10//m4 N
b=1.03*10^-9//m3
//CALCULATIONS
t2=t1+(t1*(p2-p1))/(p1+(a/(v*v)))
//results
printf(' \n temperature of gas if pressure is doubled= % 1f k',t2)
