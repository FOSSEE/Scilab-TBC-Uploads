//Example 1.47
clc;
k0=2;
n0=2;
N=10;
x=[1,2,3,4,5,6,7,8,9,10];
y=zeros(1,length(x));
for n=1:length(x)/k0
    y(n)=x(k0*n);
end
inputshift=x(N-n0);
outputshift=y(N-n0);
if(inputshift==outputshift)
    disp('THE GIVEN SYSTEM IS TIME INVARIANT')
else
    disp('THE GIVEN SYSTEM IS TIME VARIANT');
end