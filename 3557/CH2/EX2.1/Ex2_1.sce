// Example 2.1//
d= 8.93;//g/cm^3 // density of copper
a=63.55;//amu // atomic mass of copper
//The volume sampled
c=1;//mew meter //deep cylinder in the surface of solid copper
e=2;//given
f=1;//cm //centimeter
g=10^4;//mew m
vs=(%pi*(c/e)^2)*(1/10^4)^3//Volume sampled formula
mprintf(" vs = %e cm^3",vs)
//Thus, the number of atoms sampled
a1=8.93;//g/cm^3
b=0.602*10^24;//atoms//Avogadro's number
c1=63.55;//g
ns=a1*vs*b/c1
mprintf("\n ns = %e atoms",ns)
