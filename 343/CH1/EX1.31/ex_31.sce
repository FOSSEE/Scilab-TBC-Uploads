A=[1,-5,3;5,-1,-9;7,1,-5]           //Matrix of I1,I2,I3 Coeffecients by KVL equations
B=[0;0;1];
[I]=inv(A)*B   
disp("Amperes",I(1,1)+I(2,1),"Current supplied by the battery");