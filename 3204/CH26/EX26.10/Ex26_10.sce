// 1 APPENDIX. Ex no 10. Page no 647
// Initilization of variables
// Points as matrices
O=[-2,3,5]
P=[1,-2,4]
Q=[5,2,3]
F=[4,4,-1] // Force vector
// Calculations
// Positon vector ( we will solve only by using r_1 as r_2 also gives the same answer)
r_1=[P(1)-O(1),P(2)-O(2),P(3)-O(3)]
// Moment
// Calculating the cross product
M=[(r_1(2)*F(3)-r_1(3)*F(2)),(r_1(3)*F(1)-r_1(1)*F(3)),(r_1(1)*F(2)-r_1(2)*F(1))]
// Results
clc
printf('The Moment about point O is %fi %fj+%fk \n',M(1),M(2),M(3))
