clc; funcprot(0); //Example 23.1

//Initializing the variables
Q = [0:7:56];
H = [40 40.6 40.4 39.3 38 33.6 25.6 14.5 0];
n = [0 41 60 74 83 83 74 51 0];
N1 = 750;
N2 = 1450;
D1 = 0.5;
D2 = 0.35;

//Calculations
Q2 = Q*(N2/N1)*(D2/D1)^3;
H2 = H*(N2/N1)^2*(D2/D1)^2;
xlabel("Q (m3/s)");
ylabel("H (m of water )and n(percent)");
plot(Q,H,Q,n,Q2,H2,Q2,n);

legend("H1","n1","H2","n2");