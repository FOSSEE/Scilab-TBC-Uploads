//Example 1.11b
//Determine whether the following signal is time invariant or not
clc;
n0=2;
N=10;
for n=1:N
    x(n)=n; 
    y(n)=n*x(n);
end
inputshift=x(N-n0);
outputshift=y(N-n0);
if(inputshift==outputshift)
    disp('THE GIVEN SYSTEM IS TIME INVARIANT')
else
    disp('THE GIVEN SYSTEM IS TIME VARIANT');
end