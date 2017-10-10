//Example 2  2.12.b
clc ;
t0 =1;
T =10;
c=2;
for t =1: T
x ( t ) =t;
y ( t ) =x(t)+c ;
end
inputshift = x (T - t0)+c 
outputshift = y (T - t0 ) 
if( inputshift == outputshift )
disp ( 'THE GIVEN SYSTEM I S TIME INVARIANT ' );
else
disp ( 'THE GIVEN SYSTEM I S TIME VARIANT ' ) ;
end

