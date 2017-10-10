// SAMPLE PROBLEM 3/24
clc;funcprot(0);
// Given data
F_z=10;// N
m=2;// kg
v_y=5;// m/s
x=3;// m
y=6;// m
z=4;// m

// Calculation
r=[x,y,z];// m
mv=[m*0,m*v_y,m*0];// (kg.m/s)
H_O1=det([r(2),r(3);mv(2),mv(3)]);// N.m/s
H_O2=-det([r(1),r(3);mv(1),mv(3)]);// N.m/s
H_O3=det([r(1),r(2);mv(1),mv(2)]);// N.m/s
H_O=[H_O1,H_O2,H_O3];// m/s
F=[0,0,F_z];// N
Hdot_O1=det([r(2),r(3);F(2),F(3)]);// N.m
Hdot_O2=-det([r(1),r(3);F(1),F(3)]);// N.m
Hdot_O3=det([r(1),r(2);F(1),F(2)]);// N.m
Hdot_O=[Hdot_O1,Hdot_O2,Hdot_O3];// N.m
printf("\nThe angular momentum H_O about point O,H_O=%2.0fi+(%2.0f)j+%2.0fk N.m/s \nThe time derivative,Hdot=%2.0fi+(%2.0f)j+%2.0fk N.m",H_O(1),H_O(2),H_O(3),Hdot_O(1),Hdot_O(2),Hdot_O(3));
