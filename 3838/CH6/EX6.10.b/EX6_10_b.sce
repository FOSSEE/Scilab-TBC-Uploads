//Example 6 . 6 10 b
clc ;
n0 =1;
N =10;
for n =1: N
x ( n ) =n;
y ( n ) =n*x(n);
end
inputshift = (n)*x(N-n0) ;
outputshift = y (N - n0 ) ;
if( inputshift == outputshift )
disp ( 'THE GIVEN SYSTEM I S TIME INVARIANT ' )
else
disp ( 'THE GIVEN SYSTEM I S TIME VARIANT ' ) ;
end

