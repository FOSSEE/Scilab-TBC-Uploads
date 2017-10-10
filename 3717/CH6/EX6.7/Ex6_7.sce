// Ex6_7 Page:105 (2014)
clc;clear;
l = 1;    // Orbital angular momentum quantum number
m = [1, 0, -1];    // The possible z-components of l
printf("\nThe possible orientations of vector L with respect to the z-axis are:");
for i = 1:3
    theta = acosd(m(i)/sqrt(l*(l+1)));
    printf("\ntheta = %d degree (m = %d)", theta, m(i));
end

// Result 
// The possible orientations of vector L with respect to the z-axis are:
// theta = 45 degree (m = 1)
// theta = 90 degree (m = 0)
// theta = 135 degree (m = -1) 