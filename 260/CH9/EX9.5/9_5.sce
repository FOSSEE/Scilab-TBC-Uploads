//Eg-9.4
//pg-396

clc
clear

//from mclaurins series
a=[0 1 0 -1/3 0 1/5 0 -1/7 0 1/9];


//from R5,4x
//subracting fx r45x and sloving for coefficients we end up with the matrices
A=[1 0 -1.6667 0;0 1 0 -1.66667;-0.71429 0 1 0;0 -.71429 0 1];
C=[0;0.71429;0;-.55556];

B=inv(A)*C;
//using these values we can compute values of a we represent set of a values using matrix P

P(1)=0;
P(2)=1;
P(3)=B(1);
P(4)=B(2)-1/3;
P(5)=B(3)-B(1)/3;
P(6)=B(4)-B(2)/3+1/5;

T(1) = 1;
for(i = 1:4)
    T(i+1) = B(i);
end

j=poly(P,"x","coeff");
k=poly(T,"x","coeff");

disp("so required R5,4x is")
disp(j/k)