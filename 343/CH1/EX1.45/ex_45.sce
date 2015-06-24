A=[7,-1,0;1,-6,3;0,3,-4]           //Matrix of I1,I2,I3 Coeffecients by Mesh analysis
B=[17;-25;19];
[I]=inv(A)*B;
disp("Amperes",I(1,1),"I1");
disp("Amperes",I(2,1),"I2");
disp("Amperes",I(3,1),"I3");