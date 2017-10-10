//Example 2-12-c
clc ;
t0 =1;
T =10;
c=2;
for t =1: T
x ( t ) =t;
y ( t ) =3*(x(t))^(2);
end
inputshift = 3*(x(T - t0))^(2)
outputshift = y (T - t0 ) 
if( inputshift == outputshift )
disp ( 'THE GIVEN SYSTEM I S TIME INVARIANT ' );
else
disp ( 'THE GIVEN SYSTEM I S TIME VARIANT ' ) ;
end

