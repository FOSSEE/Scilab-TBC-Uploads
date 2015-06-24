 clc
//given that
lambda = 1.2 // wavelength in angstrom
theta_deg = 9 // angle fraction in degree
theta_min = 30 // Angle fraction in minute
printf("Example 3.8\n")
theta = theta_deg+theta_min/60 // Total angel
for n = 1:4
    d = lambda/(n*2*sin(theta*%pi/180)) // Inter layer spacing
    printf(" If order is %d then spacing is %f angstrom.\n",n,d)
end

 
