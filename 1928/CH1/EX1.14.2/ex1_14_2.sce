//Chapter-1,Example1_14_2,pg 1-58

n=4                                     //FCC structure

ro=8.9                                  //density of Cu atom

A=63.55                                 //atomic weight of Cu atom

N=6.023*10^23                           //Avogadro's number

a=((n*A)/(N*ro))^(1/3)

printf("        1) Lattice constant=")

disp(a)

printf("cm")

r=sqrt(2)*a/4                           //radius of Cu atom

d=2*r                                   //diameter of Cu atom

printf("      2) Diameter of Cu atom=")

disp(d)

printf("cm")
