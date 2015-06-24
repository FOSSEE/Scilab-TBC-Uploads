// Initilization of Variables
v_1=3 // m/s // uniform speed of the belt at top
v_2=2 // m/s // uniform speed of the belt at the bottom
r=0.4 // m // radius of the roller
// Calculations
// equating eq'ns 2 & 4 and solving for v_c & theta' (angular velocity). We use matrix to solve the eqn's
A=[1 r;1 -r]
B=[v_1;v_2]
C=inv(A)*B
// Results
clc
printf('The linear velocity (v_c) at point C is %f m/s \n',C(1))
printf('The angular velocity at point C is %f radian/seconds \n', C(2))
// NOTE: The answer of angular velocity is incorrect in the book
