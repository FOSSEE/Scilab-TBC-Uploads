//Book - Power System: Analysis & Design 5th Edition
//Authors - J. Duncan Glover, Mulukutla S. Sarma, and Thomas J. Overbye
//Chapter - 6 ; Example 6.1
//Scilab Version - 6.0.0 ; OS - Windows

clc;
clear;

A=[10 5;2 9];
y=[6;3];
N=length(y);                 //Number of variables
st=N-1;                      //Number of Gauss elimination steps

//Gauss Elimination step:
B=A;
for i=1:st
        for j=i+1:N
            m=(B(j,i)/B(i,i));
            A(j,i+1:N)=A(j,i+1:N)-m*(A(i,i+1:N));
            A(i+1:N,i)=0;
            y(j)=y(j)-m*y(i);
        end  
    B=A;   
end

//Back Substitution step
x2=y(2)/A(2,2)
x1=(y(1)-A(1,2)*x2)/A(1,1);
disp(A,'The triangularized matrix using gauss elemination is:')
disp(y,'and the corresponding y matrix is:')
printf('The solution using back substitution is x1=%.4f and x2=%.4f',x1,x2)

