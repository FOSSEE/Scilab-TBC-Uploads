// chapter 5 , Example5 3 , pg 151
//(1 1 1) plane for a BCC crystal
a=5*10^-10//lattice constant   (in m)
//height of equilaterl triangle (shaded area) =a*sqrt(3/2)
//hence area of shaded triangular portion is  a*sqrt(2)*a*sqrt(3/2)/2 = a^2*sqrt(3)/2
//every corner atom contributes 1/6to the area
n111=(3/6)/(a^2*sqrt(3)/2)  //planar concentration
printf("surface density of atoms in (1 1 1)plane of BCC structure (in atoms/m^2)")
disp(n111)
