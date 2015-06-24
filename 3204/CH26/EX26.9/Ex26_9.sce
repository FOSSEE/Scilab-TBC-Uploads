// 1 APPENDIX. Ex no 9. Page no 645
// Initilization of Variable 
// NOTE:Some Notation has been change to avoid conflict
// Points As martices
A=[0,1,2]
B=[1,3,-2]
P=[3,6,4]
a_s=2 // Angular speed in rad/s

// Calculations
C=[B(1)-A(1),B(2)-A(2),B(3)-A(3)]
magC=(C(1)^2+C(2)^2+C(3)^2)^0.5 // Magnitude of the Vector C 
// Unit vector
C_unit=[C(1)/magC,C(2)/magC,C(3)/magC] // Unit vector
// Position Vector
r=[P(1)-A(1),P(2)-A(2),P(3)-A(3)]
// Velocity Vector
// Calculating the cross product as,
V=[(C(2)*r(3)-C(3)*r(2)),(C(3)*r(1)-C(1)*r(3)),(C(1)*r(2)-C(2)*r(1))]
// Vector notation
V_n=(a_s/magC)*[V(1),V(2),V(3)]
// Velocity Magnitude
magV=sqrt(V(1)^2+V(2)^2+V(3)^2)
v=(a_s/magC)*magV
// Result
clc
printf("The vector notation of velocity is %fi %fj %fk \n",V_n(1),V_n(2),V_n(3))
printf("The magnitude of the Velocity Vector is %f \n",v)
