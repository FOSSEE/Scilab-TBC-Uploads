// Part (a)
m = 3;
V1 = 0.22;
P1 = 500e03;
P2 = 100e03;
V2 = V1*(P1/P2)^(1/1.2);
dU = 3.56*(P2*V2-P1*V1);
gama = 1.2;
W = (P2*V2-P1*V1)/(1-gama);
Q = dU+W;
disp("J respectively",dU,W,Q,"Q,W and dU of the quasi static process are")
// Part (b)
Qb = 30e03;
Wb = Qb-dU; 
disp("Joule",Wb,"Work transfer for the process is")
// Part (c)
disp("Wb is not equal to integral(p*dv) since the process is not quasi static")
