//example1.31
clc
disp("Method 1: Kirchoffs laws")
disp("Now apply KVL to the two loops without current source as effect of the currents in various branches.")
disp("-2(I1-2)-I2+6=0   i.e.    2(I1)+I2=10   ..(1)")
disp("-3(I1-2-I2)-12+I2=0   i.e.    -3(I1)+4(I2)=6   ..(2)")
disp("-3(I1)+4(10-2(I1))=6")
i=34/11
format(7)
disp(i,"Therefore,    I1(in A)=")
i=10-(2*3.0909)
disp(i,"and,   I2(in A)=")
disp("Currents through various resistances are,")
i=3.0909-2
disp(i,"I(2ohm)[in A]=I1-2=")
disp("I(1ohm)[in A]=I2=3.8181")
i=3.0909-2-3.8181
disp(i,"I(3ohm)[in A]=I1-2-I2=")
disp("Current through 3ohm is negative i.e. it is flowing in opposite direction to that assumed in the circuit.")
disp("Method II: Loop analysis")
disp("From the current source branch,")
disp("I3= 2 A")
disp("Applying KVL to the other two loopos without current source,")
disp("-2(I1)+2(I3)-I1+I2+6=0    i.e.    -3(I1)+I2= -10  ..(1)")
disp("-3(I2)+3(I3)-12-I2+I1=0   i.e.    I1-4(I2)=6  ..(2)")
disp("Solving we get,")
disp("I1-4(-10+3(I1))=6")
i=34/11
disp(i,"I1(in A)=")
i=(3.0909-6)/4
disp(i,"and,  I2(in A)=")
disp("Currents through various resistances are,")
i=3.0909-2
disp(i,"I(2ohm)[in A]=I1-2=")
i=3.0909+0.7272
disp(i,"I(1ohm)[in A]=I1-I2=")
i=-0.7272-2
disp(i,"I(3ohm)[in A]=I2-2=")
disp("The currents are same as obtained by the method 1.")
