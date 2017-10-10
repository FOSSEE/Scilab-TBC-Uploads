//Example 5_1
clc();
clear;
//To determine the miller indices of the plane
//Given Intercepts are 2a,-3b,6c
a=1
b=1
c=1
intercepts1=2*a
intercepts2=-3*b
intercepts3=6*c
unitcell1=intercepts1/a
unitcell2=intercepts2/b
unitcell3=intercepts3/c
resiprocal1=1/unitcell1
resiprocal2=1/unitcell2
resiprocal3=1/unitcell3
lcms=int32([unitcell1 unitcell2 unitcell3]);
v=lcm(lcms)
lcm1=3
lcm2=-2
lcm3=1
printf("Co-ordinates of A,B,C are (%.2f,0,0),(0,%.1f,0)(0,0,%d)",1/lcm1,1/lcm2,lcm3)
printf("\n   Miller indices of the plane are(%d,%d,%d)",lcm1,lcm2,lcm3)
