//Chapter 10 : Crystallography and Crystal Imperfections

clear;

//Variable declaration
h=1
k=1
l=2
a=2.5
b=a
c=2.6

//Calculations          
d=((h**2/a**2)+(k**2/b**2)+(l**2/c**2))**(-0.5)

//Result
mprintf("Inter-planar spacing d= %.3f Armstrong",d)
