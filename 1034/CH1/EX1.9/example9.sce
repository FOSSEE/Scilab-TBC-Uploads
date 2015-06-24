clear;
clc;
printf("\n Example 1.9");
a=[1 2 3;4 5 6];
b=[7 8 9;10 11 12];
x=matrix(a,3,2);........//no. of rows=3,no. of col. =2.
y=matrix(b,3,2);........//no, of rows=3,no. of col.=2.
printf("matrix x=");
disp(x);
printf("matrix y=");
disp(y);
[p,q]=size(x);
i=1;
j=1;
c=1;
for i=1:p
    for j=1:q
        z(i,j)=x(i,j)+y(i,j);..........//summing two matrices
        c=c+1;...........//step count
    end
end
printf("\n Resultant matrix after addition =");
disp(z);.............//displayin sum of two matrices.
printf("\n step count is=%d",(c-1));
