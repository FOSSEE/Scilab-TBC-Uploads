// Example 11.11: (a) Amplifier type
//                (b) Input resistance, Output resistance, Transfer ratio
clc, clear
r_pi=1e3; // in ohms
gm=0.1; // in mho

disp("Part (a)");
disp("It ia a CB-CE cascade, configuration. It has low input and high output impedance and hence corresponds to a current     amplifier.");

disp("Part (b)");
// From low frequency equivalent circuit in Fig. 11.40
btao=gm*r_pi;
Rin=r_pi/(1+btao); // Input resistance in ohms
Rout=%inf; // Output resistance (= ro of Q2)
Ai=gm*gm*Rin*3e3*1e3/(3e3+1e3); // Transfer ratio
disp(Rin,"Input resistance (Ω​) =");
disp(Rout,"Output resistance =");
disp(Ai,"Transfer ratio =");