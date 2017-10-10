// Ex7_6 Page:126 (2014)
clc;clear;
l1 = 1;    // Orbital angular momentum quantum number of first electron
l2 = 2;    // Orbital angular momentum quantum number of second electron
s1 = 0.5;    // Spin quantum number of first electron
s2 = 0.5;    // Spin quantum number of second electron
L_max = l1 + l2;
L_min = l2 - l1;
S_max = s1 + s2;
S_min = s1 - s2;
printf("\nThe possible values of L, S and J are:");
for L = L_max:-1:L_min
    for S = S_max:-1:S_min
        J_max = L + S; J_min = L - S;
        printf("\nL = %d, S = %d, J = ", L, S);
        for J = J_max:-1:J_min
            if (J <> J_min) then
                printf("%d, ", J);
            else
            printf("%d", J);
            end
        end
    end
end

// Result
// The possible values of L, S and J are:
// L = 3, S = 1, J = 4, 3, 2
// L = 3, S = 0, J = 3
// L = 2, S = 1, J = 3, 2, 1
// L = 2, S = 0, J = 2
// L = 1, S = 1, J = 2, 1, 0
// L = 1, S = 0, J = 1 
