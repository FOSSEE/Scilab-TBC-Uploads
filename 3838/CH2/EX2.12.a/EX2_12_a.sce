//Example 2   2.12.a
clc ;
t0 =1;
T =10;
for t =1: T
x ( t ) =t;
y ( t ) =(2)*exp(x(t)) ;
end
inputshift = 2*exp(x (T - t0)) 
outputshift = y (T - t0 ) 
if( inputshift == outputshift )
disp ( 'THE GIVEN SYSTEM I S TIME INVARIANT ' );
else
disp ( 'THE GIVEN SYSTEM I S TIME VARIANT ' ) ;
end

