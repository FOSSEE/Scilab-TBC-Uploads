//Example 2 . 2 11 b
clc ;
t0 =1;
T =10;
for t =1: T
x ( t ) =t;
y ( t ) =x(t)*sin(20*%pi*t) ;
end
inputshift = x(T-t0)*sin (20*%pi*(T) ) ;
outputshift = y (T - t0 ) ;
if( inputshift == outputshift )
disp ( 'THE GIVEN SYSTEM I S TIME INVARIANT ' )
else
disp ( 'THE GIVEN SYSTEM I S TIME VARIANT ' ) ;
end

