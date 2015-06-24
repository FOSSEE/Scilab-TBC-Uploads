//Example 9.1
//Recurrence formula
//Page no. 288
clc;clear;close;

y(1)=5;
for i=2:7
    y(i)=2*y(i-1)
    printf('\ny(%i) = %g\n',i-1,y(i-1))
end