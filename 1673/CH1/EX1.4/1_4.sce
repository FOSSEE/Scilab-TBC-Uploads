//example 1.4
//best approximation
//page 10
clc;clear;close;
A_X=1/3;//the actual number
X1=0.30;
X2=0.33;
X3=0.34;
A_E1=abs(A_X-X1);
A_E2=abs(A_X-X2);
A_E3=abs(A_X-X3);
if(A_E1<A_E2)
if(A_E1<A_E3)
    B_A=X1;
end 
end
if(A_E2<A_E1)
if(A_E2<A_E3)
    B_A=X2;
end
end
if(A_E3<A_E2)
if(A_E3<A_E1)
    B_A=X3;
end
end
printf('the best approximation of 1/3 is %.2g ',B_A);

