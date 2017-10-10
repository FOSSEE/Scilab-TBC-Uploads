//Chapter-22,Example 4,Page 502
clc();
close();

M=58.46    //molecular weight of NaCl

N= 6.023*10^23   //Avogadro number

p=2.167   //density of NaCl

n= 4    //number of molecules per unit cell

a=nthroot((n*M/(p*N)),3)/100   //lenght of the edge

h=1

k=1 

l=0

d=a/sqrt((h^2)+(k^2)+(l^2))

printf("the lattice constant is a= %.12f meter",a)

printf("\n the spacing between planes is d = %.10f meter",d)

