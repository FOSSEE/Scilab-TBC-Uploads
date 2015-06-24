V1 = 0.03;
P1 = 170e03;
P2 = 400e03;
V2 = 0.06;
U = 3.15*(P2*V2-P1*V1);
B = [P1 P2]';
A = [1 V1; 1 V2];
x = inv(A)*B;
a = x(1); b = x(2);
function P = pressure(V) 
  P = a+b*V;
endfunction;
W = intg(V1,V2,pressure); 
Q = U+W;
disp("J",W,"The work done by the system is")
disp("J",U,"The internal energy change of the system is")
disp("J",Q,"The heat flow into the system is")
