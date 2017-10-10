clc;funcprot(0);//EXAMPLE 6.2
//page 152
// Initialisation of Variables
F=45000;.......//Force applied on an aluminum rod in lb
e=25000;.......//the maximum allowable stress on the rod in psi
l2=150;.......//the minimum length of the rod in in
e1=0.0025;......//The strain appiled on rod
sigma=16670;.........//Stress applied on rod in psi
L=0.25;........//The maximum allowable elastic deformation in in
//CALCULATIONS
Ao1=F/e;........//The required crosssectional area of the rod
d=sqrt((Ao1*4)/%pi);......//Diameter of rod in in
l1=e1*L;...........//The maximum length of the rod in in
e2=L/e1;...........//The minimum strain allowed on rod
Ao2=F/sigma;........//The minimum cross-sectional area in in^2
disp(Ao1,"The required crosssectional area of the rod in in^2:")
disp(d,"Diameter of rod in in:")
disp(l1,"The maximum length of the rod in in:")
disp(e2,"The minimum strain allowed on rod:")
disp(Ao2,"The minimum cross-sectional area in in^2:")
