clc;
//page no 89
// prob no 2.10
// refer fig 2.40
P=10;f_ref=10*10^3;M=10;
//consider 
N=1;
// With a fixed-modulus prescalar, the min freq step is 
step_size=M*f_ref;
// With the two-modulus system, let the main divider modulus N remain constant & increase the modulus m to (m+1) to find how much the freq changes.
// for 1st case, o/p freq 
fo=(M+N*P)*f_ref;
// for 2nd case where leave N alone but changes M to M+1, new o/p freq 
fo_=(M+1+N*P)*f_ref;
// The difference is 
f= fo_-fo;
disp('Hz',f,'The step size that would have been obtained without prescaling');