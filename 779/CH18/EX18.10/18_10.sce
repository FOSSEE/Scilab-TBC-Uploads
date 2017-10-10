T1 = 278; P21 = 2.5; // P2/P1
cp = 1.005; ns = 0.84; V2 = 120; g = 1.4;
T2s = T1*(P21)^((g-1)/g);
T2 = T1 + (T2s-T1)/ns;
mg = 0.04*(13+1);
P = mg*cp*(T2-T1);
T02 = T2 + V2^2/(2*cp*1000);
P1 = 0.6;
P2 = P21*0.6;
P02 = P2*(T02/T2)^(g/(g-1));
disp("kW",P,"Power required to drive the compressor is")
disp("K",T02,"Stagnation temperature is")
disp("bar",P02,"Stagnation pressure is")