// Scilab Code Ex8.5: Page-289 (2014)
clc; clear;
l1 = 1;    // Orbital angular momentum quantum number for first electron
l2 = 2;    // Orbital angular momentum quantum number for second electron
s1 = 1/2;    // Spin angular momentum quantum number for first electron
s2 = 1/2;    // Spin angular momentum quantum number for second electron
temp_j = zeros(15);
cnt = 1;
printf("\nThe all possibe values of the total angular momentum quantum number of J are:\n");
for L = abs(l1 - l2):1:abs(l1 + l2)
    for S = abs(s1 - s2):1:abs(s1 + s2)
        for j = abs(L - S):1:abs(L + S)
            temp_j(cnt) = j; 
            cnt = cnt + 1;
        end
    end
end
J = -1;
temp_J = gsort(temp_j, 'g', 'i');
for i = 1:1:cnt-1
    if temp_J(i) > J  then
       J = temp_J(i);
       printf("%d  ", J);
    end
end

// Result
// The all possibe values of the total angular momentum quantum number of J are:
// 0  1  2  3  4   
