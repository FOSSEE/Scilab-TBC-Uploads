//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 9.22w
//calculation of the loss of kinetic energy due to the collision

//given data
m=1.2//mass(in kg) of the block1
v=20*10^-2//velocity(in m/s) of the approach
e=3/5//value of coefficient of restitution
vdash=e*v//velocity (in m/s) of the separation

//calculation
//by principle of conservation of linear momentum ....v1 + v2 = v m/s.....(1)
//as the coefficient of restitution is 3/5............v2 - v1 = vdash m/s.....(2)
//from equation (1),we get.......v2=v-v1
//substituting v2 in equation (2),we get
v1=(v-vdash)/2
v2=v-v1//from equation (1)
lke=(m/2)*((v*v)-(v1*v1)-(v2*v2))

printf('the loss of kinetic energy during the collision is %3.1e J',lke)
