// Scilab Code Ex3b.6: Page-165 (2008)
clc; clear;
theta = [30 45 60 90];    // Angles between principal sections of polariser and analyser, degree
for i = 1:1:4
    P_red = (1-cosd(theta(i))^2)*100;    // Percentage reduction in intensity of incident light
    printf("\nFor theta = %d degree, percentage reduction = %1.0f percent", theta(i), P_red);
end

// Result
// For theta = 30 degree, percentage reduction = 25 percent
// For theta = 45 degree, percentage reduction = 50 percent
// For theta = 60 degree, percentage reduction = 75 percent
// For theta = 90 degree, percentage reduction = 100 percent 
