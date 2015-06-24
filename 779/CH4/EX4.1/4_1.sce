V1 = 0.3; // Initial volume in m3
V2 = 0.15; // Final volume in m3
P = 0.105e06; // Pressure in Pa
Q = -37.6e03; // Heat tranferred in J
W = P*(V2-V1); // Work done
U = Q-W; // Internal energy change
disp("Joule",U,"Change in the internal energy of the system is")