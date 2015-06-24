// Exa 1.19
clc;
clear;
close;
format('v',7)
// Given data
R1= 10;// in ohm
R2= 10;// in ohm
R3= 20;// in ohm
R4= 20;// in ohm
R5= 20;// in ohm
V= 10;// in V
I1= 1;// in A
I7=0.5;// in A
//Applying KCL at node A:  VA*(R1+R2)+VB*-R1 = I1*R1*R2                                                                 (i)
//Applying KCL at node B:  VA*R3*R4+VB*-(R2*R3+R3*R4+R4*R2)+VC*R2*R3 = V*R2*R4      (ii)
//Applying KCL at node C: -VB*R5+VC*(R4+R5)=I7*R4*R5                                                                   (iii)
A=[(R1+R2) R3*R4 0; -R1 -(R2*R3+R3*R4+R4*R2) -R5;0 R2*R3 (R4+R5)]
B= [I1*R1*R2 V*R2*R4 I7*R4*R5];
Value= B*A^-1;// Solving eq(i), (ii) and (iii) by Matrix method
VA= Value(1);// in V
VB= Value(2);// in V
VC= Value(3)
I2= VA/R1;// in A
I3= (VA-VB)/R2;// in A
I4= (VB+V)/R3;// in A
I5= (VC-VB)/R4;// in A
I6= VC/R5;// in A
disp(I1,"The value of I1 in A is : ");
disp(I2,"The value of I2 in A is : ");
disp(I3,"The value of I3 in A is : ");
disp(I4,"The value of I4 in A is : ");
disp(I5,"The value of I5 in A is : ");
disp(I6,"The value of I6 in A is : ");
disp(I7,"The value of I7 in A is : ");
