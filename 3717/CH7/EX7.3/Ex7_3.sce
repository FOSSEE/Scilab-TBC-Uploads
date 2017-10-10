// Ex7_3 Page:118 (2014)
clc;clear;
l = 2;    // Orbital angular momentum quantum number
s = 0.5;    // Spin quantum number
state = ["D(5/2)", "D(3/2)"];    // States of the d-electron
j = [l + s, l - s];    // Total angular momentum quantum number
for i = 1:2
    theta(i) = acosd((j(i)*(j(i)+1) - l*(l+1) - s*(s+1))/(2*sqrt(l*(l+1))*sqrt(s*(s+1))));
    printf("\nThe angle between L and S for %s state = %5.2f degree", state(i), theta(i));
end

// Result
// The angle between L and S for D(5/2) state = 61.87 degree
// The angle between L and S for D(3/2) state = 135.00 degree 
