//Example 18.1//
ur=1.01;
u0=4*%pi*10^-7;//henry/m
H=2*10^5;//amperes/m
B=ur*u0*H
mprintf("B = %f weber/m^2",B)
//Using second equality, we obtain
M=(ur-1)*(H)
mprintf("\nM = %e amperes/m",M)
