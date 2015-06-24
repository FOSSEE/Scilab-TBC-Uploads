// Example 1.5
clc;
//Given
A = [3 5 -7];
B = [2 7 1];

//Solution

C = A+B;
D = A-B;
E = (A(1,1)^2 + A(1,2)^2 + A(1,3)^2)^0.5;
F = (B(1,1)^2 + B(1,2)^2 + B(1,3)^2)^0.5;
G = (A(1,1)*B(1,1) + A(1,2)*B(1,2) + A(1,3)*B(1,3));
H = G/(E*F);
// where C=A+B and D=A-B and E =|A| and F = |B| and G = A.B and H =cos(A,B)

disp("A+B =");
disp(C);
disp("A-B =");
disp(D);
disp("|A|=");
disp(E);
disp("|B|=");
disp(F);
disp("A.B=");
disp(G);
disp("cos(A,B)=");
disp(H);