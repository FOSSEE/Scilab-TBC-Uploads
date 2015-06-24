// Scilab Code Ex5.14 Determining the direction in which slip is initiated by the applied stress in zinc: Page-170 (2010)
sigma = 2.3;    // Applied stress when the plastic deformation is first observed, MPa
phi = 60;    // Angle which the normal to the basal plane makes with the tensile axis of zinc, degree
// Function to find the value of resolved shear stress 
function[tau] = stress(lambda)
    tau = sigma*cosd(phi)*cosd(lambda);
endfunction
lambda = [38 45 84];    // Angles which the three slip directions x1, x2 and x3 respectively makes with the tensile axis, degrees
t = zeros(1,3);        // Initialize a one-dimensional vector of three elements
for i = 1:1:3        
    t(i) = stress(lambda(i));    // Calculate the value of resolved shear stress by calling stress function
    printf("\ntau%d = %5.3f MPa", i, t(1,i));    // Display resloved shear stress for each direction, MPa
end
// Locate for the largest resolved stress value
big = t(1,1);
for i = 2:1:3
    if t(1,i) > big then
        big = t(1,i)    // Set largest valuse of resolved stress if the condition meets
    end
end
printf("\nThe slip is initiated along direction x1 at tau_c = %5.3f MPa", big);
// Result
// tau1 = 0.906 MPa
// tau2 = 0.813 MPa
// tau3 = 0.120 MPa
// The slip is initiated along direction x1 at tau_c = 0.906 MPa
