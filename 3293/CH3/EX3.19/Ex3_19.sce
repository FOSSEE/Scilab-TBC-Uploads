//page 98
//Example 3.19
clc;
clear;
close;
function [tr] = trace_matrix(M,n)
    for i = 1 : n
    tr = tr + M(i,i);
    end
endfunction
n = round(rand() * 10 + 2);
disp(n,'n = ');
A = round(rand(n,n) * 10);
disp(A,'A = ');
tr = 0;
disp('Trace of A:');
tr1 = trace_matrix(A,n);
disp(tr1,'tr(A) = ');
disp('--------------------------------');
c = round(rand() * 10 + 2);
disp(c,'c = ');
B = round(rand(n,n) * 10);
disp(B,'B = ');
disp('Trace of B:');
tr2 = trace_matrix(B,n);
disp(tr2,'tr(B) = ');
disp(c*tr1+tr2,'tr(cA + B) = ');
//end
