// 1 APPENDIX. Ex no 12. Page no 648
// Initilization of variables
// Different notations have been used at some places
f=22 // N 
// Points as matrices
A=[4,-1,7]
O=[1,-3,2]
V=[9,6,-2] // Given vector
// Calculations
// Unit vector in the direction of the vector
v=[V(1),V(2),V(3)]/sqrt(V(1)^2+V(2)^2+V(3)^2)
// Force
F=f*[v(1),v(2),v(3)]
// Position vector of point A wrt O
r=[A(1)-O(1),A(2)-O(2),A(3)-O(3)]
// Moment
M=[(r(2)*F(3)-r(3)*F(2)),(r(3)*F(1)-r(1)*F(3)),(r(1)*F(2)-r(2)*F(1))]
// Results
clc
printf('The moment is %fi + %fj + %f k \n',M(1),M(2),M(3))
