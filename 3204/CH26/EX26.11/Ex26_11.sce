// 1 APPENDIX. Ex no 11. Page no 647
// Initilization of variables
// Points as matrices
P=[1,-1,2] // Point where force is applied
O=[2,-1,3] // point where moment is to be found
F=[3,2,-4] // Force vector
// Calculations
// Position vector of point P wrt O
r=[P(1)-O(1),P(2)-O(2),P(3)-O(3)]
// Moment
M=[(r(2)*F(3)-r(3)*F(2)),(r(3)*F(1)-r(1)*F(3)),(r(1)*F(2)-r(2)*F(1))]
// Resuts
clc
printf('The moment of the force is %fi %fj %fk \n',M(1),M(2),M(3))
