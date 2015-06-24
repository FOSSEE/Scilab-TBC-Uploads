clc
clear
p1=[1,0,0]//Miller indices of the plane 1
p2=[1,1,0]//Miller indices of the plane 2
p3=[1,1,1]//Miller indices of the plane 3

d11=(1/sqrt(p1(1)^2+p1(2)^2+p1(3)^2))//The lattice spacing for the plane in m* a
d12=(1/sqrt(p2(1)^2+p2(2)^2+p2(3)^2))//The lattice spacing for the plane in m* a
d13=(1/sqrt(p3(1)^2+p3(2)^2+p3(3)^2))//The lattice spacing for the plane in m* a

//Output
printf('The seperation between the successive plane (%i %i %i), (%i %i %i) and (%i %i %i) are in the ratio of %3.0f : %3.2f : %3.2f',p1(1),p1(2),p1(3),p2(1),p2(2),p2(3),p3(1),p3(2),p3(3),d11,d12,d13)
