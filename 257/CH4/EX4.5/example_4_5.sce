syms V C1 q1 q2 L1 R1

disp("equivalent systems equations")
disp("T = K1 *(theta1-theta2)")
disp("0=K1*(theta3-theta2) + J1*s^2*theta2 + B1*s*theta2 + K*(theta2-theta3) + B*s*(theta2-theta3) ")
disp("0=K*(theta3-theta2) + B*s*(theta3-theta2) + J2*s^2*theta3 + B2*s*theta3 + K2*theta3")



//F-V anology

T=V;
K1=1/C1;
theta1=q1;
theta2=q2;
J1=L1;
B1=R1;
disp("FV analogy")
disp(" V = 1/C1 *(q1-q2)")
disp("0=1/C1*(q3-q2) + L1*s^22*q2 + R1*s*q2 + 1/C*(q2-q3) + R*s*(q2-q3) ")
disp("0=1/C*(q3-q2) + R*s*(q3-q2) + L2*s^2*q3 + R2*s*q3 + 1/C2*q3")

