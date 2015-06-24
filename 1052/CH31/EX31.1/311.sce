clc;
//Example 31.1 page no 486
printf("Example 31.1 page no 486\n\n ");
//set of linear algebric equation using gauss elimination
A=[3,-2,1;1,4,-2;2,-3,-4]//matrix A
B=[7;21;9]//matrix B
X=inv(A)*B
printf("\n X=%f",X);
X1=X(1,1)//value of X1
X2=X(2,1)//value of X2
X3=X(3,1)//value of X3
printf("\n X1=%f\nX2=%f \nX3=%f",X1,X2,X3);
