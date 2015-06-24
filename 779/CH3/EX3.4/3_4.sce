T = 1.275e-03; // Torque acting against the fluid in N
N = 10000; // Number of revolutions
W1 = 2*%pi*T*N; // Work done by stirring device upon the system
P = 101.325e03; // Atmospheric pressure in N/m2
d = 0.6; // Piston diameter in m
A = (%pi/4)*(d)^2; // Piston area in m
L = 0.80; // Displacement of diameter in m
W2 = (P*A*L)/1000; // Work done by the system on the surroundings i KJ
W = -W1+W2; // Net work tranfer for the system
disp("KJ",W,"The Net work tranfer for the system is")
