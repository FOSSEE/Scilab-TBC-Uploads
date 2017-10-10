//Book - Power System: Analysis & Design 5th Edition
//Authors - J. Duncan Glover, Mulukutla S. Sarma, and Thomas J. Overbye
//Chapter - 6 ; Example 6.2
//Scilab Version - 6.0.0 ; OS - Windows

clc;
clear;

A=[2 3 -1;-4 6 8;10 12 14];
y=[5;7;9];
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
disp(A,'The triangularized matrix using gauss elemination is:')
disp(y,'and the corresponding y matrix is:')
