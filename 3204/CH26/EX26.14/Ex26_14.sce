// 1 APPENDIX. Ex no 14. Page no 649
// Initilization of variables
// Some notations have been assumed
f=100 // N // magnitude of force
// Co-ordinates of corners of the box as matrices
A=[0,0,0]
B=[0.5,0,0]
C=[0.5,0,1]
D=[0,0,1]
E=[0,0.5,0]
F=[0.5,0.5,0]
G=[0.5,0.5,1]
H=[0,0.5,1]
// Calculations
// Force vector
Fmag=f/sqrt((F(1)-C(1))^2+(F(2)-C(2))^2+(F(3)-C(3))^2)
F=Fmag*[F(1)-C(1),F(2)-C(2),F(3)-C(3)]
// Position vector
r_EC=[C(1)-E(1),C(2)-E(2),C(3)-E(3)]
// Moment about point E
// Calculating the cross product
M_E=[(r_EC(2)*F(3)-r_EC(3)*F(2)),(r_EC(3)*F(1)-r_EC(1)*F(3)),(r_EC(1)*F(2)-r_EC(2)*F(1))] // N.m // The value taken for F is incorrect in textbook.
// Unit vector
n_AE=[E(1)-A(1),E(2)-A(2),E(3)-A(3)]/sqrt((E(1)-A(1))^2+(E(2)-A(2))^2+(E(3)-A(3))^2)
// Moment of force about axis AE
// finding the dot product
M_AE=M_E(1)*n_AE(1)+M_E(2)*n_AE(2)+M_E(3)*n_AE(3) // N.m
// Results
clc
printf('The moment of the force about point E is %fi - %fj + %fk N.m \n',M_E)
printf('The moment of force about axis AE is -%f N.m \n',M_AE)
// The value of M_AE & M_E is incorrect in the textbook.Incorrect value of force vector is taken in calculation of M_E
