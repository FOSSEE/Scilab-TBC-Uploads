h1 = 3230.9; s1 = 6.69212; V1 = 160; T1 = 273+400;
h2 = 2676.1; s2 = 7.3549; V2 = 100; T2 = 273+100;
T0 = 298; W = 540; Tb = 500;
Q = (h1-h2)+((V1^2-V2^2)/2)*1e-03-W;
I = 151.84-Q*(0.404);
AF = W + Q*(1-(T0/Tb)) + I; // AF = af1-af2
n2 = W/AF;
disp("kJ/kg",I,"Irreversibility per unit mass is")
disp(n2,"The second law effiency of the turbine is")
