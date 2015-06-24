//Chapter-1,Example1_14_9,pg 1-61

n=4                                     //for FCC structure

//the interplanar spacing of plane

h=1

k=1

l=1

d=2.08*10^-10                           //distance

A=63.54                                 //atomic weight of Cu

N=6.023*10^26                           //amstrong no

//we know that d=a/sqrt(h^2+k^2+l^2) therefore

a=d*sqrt(h^2+k^2+l^2)

//also (a^3*q)=n*A/N

q=n*A/(N*a^3)

printf("             1)density=")

disp(q)

printf("kg/m^3")

//for FCC structure

r=sqrt(2)*a/4

d=r*2

printf("       2)radius r=")

disp(r)

printf("m")

printf("            3)diameter d=")

disp(d)

printf("m")

