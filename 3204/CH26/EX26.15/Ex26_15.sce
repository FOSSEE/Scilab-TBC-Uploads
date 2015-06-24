// 1 APPENDIX. Ex no 15. Page no 652
// Initilization of variables
// Consider fig. 16. The co-ordinates of various points are
// Co-ordinates as matrices
// Some of the notations have been changed
f1=5 // kN
f2=7.5 // kN
f3=10 // kN
A=[0,0,0]
E=[0,1,0]
D=[0,0,2]
F=[3,1,0]
G=[3,1,2]
H=[0,1,2] // co-ordinates of H not given in book. ref fig.16 for the same
// Calculations
// Force vectors
F1=(f1/sqrt((F(1)-E(1))^2+(F(2)-E(2))^2+(F(3)-E(3))^2))*[F(1)-E(1),F(2)-E(2),F(3)-E(3)]
F2=(f2/sqrt((D(1)-H(1))^2+(D(2)-H(2))^2+(D(3)-H(3))^2))*[D(1)-H(1),D(2)-H(2),D(3)-H(3)]
F3=(f3/sqrt((G(1)-E(1))^2+(G(2)-E(2))^2+(G(3)-E(3))^2))*[G(1)-E(1),G(2)-E(2),G(3)-E(3)]
// Resultant force
R=F1+F2+F3 // kN
// Position vectors
r_AE=[E(1)-A(1),E(2)-A(2),E(3)-A(3)]
r_AD=[D(1)-A(1),D(2)-A(2),D(3)-A(3)]
// Moment of forces about A
// Calculating the cross product
M1=[(r_AE(2)*F1(3)-r_AE(3)*F1(2)),(r_AE(3)*F1(1)-r_AE(1)*F1(3)),(r_AE(1)*F1(2)-r_AE(2)*F1(1))]
M2=[(r_AD(2)*F2(3)-r_AD(3)*F2(2)),(r_AD(3)*F2(1)-r_AD(1)*F2(3)),(r_AD(1)*F2(2)-r_AD(2)*F2(1))]
M3=[(r_AE(2)*F3(3)-r_AE(3)*F3(2)),(r_AE(3)*F3(1)-r_AE(1)*F3(3)),(r_AE(1)*F3(2)-r_AE(2)*F3(1))]
// Rseultant moment
M_R=M1+M2+M3 // KN.m
// Results
clc
printf('The resultant force is %fi %fj + %fk kN \n',R)
printf('The resultant moment of all the forces about point A is %fi + %fj %fk kN.m \n',M_R)
