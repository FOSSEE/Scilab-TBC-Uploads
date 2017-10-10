//Example 5_2
clc();
clear;
//To determine the miller indices of the plane
//Given Intercepts are Infinity,OY,OZ
intercepts1="Infinity"
intercepts2="OY"
intercepts3="OZ"
unitcell1="Infinity"
unitcell2=1
unitcell3=(2/3)
resiprocal1=0
resiprocal2=1/unitcell2
resiprocal3=1/unitcell3
lcms=int32([unitcell2 unitcell3]);
v=lcm(lcms)
lcm1=0
lcm2=2
lcm3=3
printf("Co-ordinates of A,B,C are (Infinity,0,0),(0,%d,0)(0,0,%f)",unitcell2,unitcell3)
printf("\n   Miller indices of the plane are(%d,%d,%d)",lcm1,lcm2,lcm3)
