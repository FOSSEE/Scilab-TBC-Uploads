//variable declaration
N_a=0.3
gamma=45

//Calculations
theta_a=asin(N_a)
theta_as=asin((N_a)/cos(gamma))

//Results
printf('Acceptance angle, theta_a =%0.3f degrees\n',(theta_a*180/%pi))
printf('For skew rays,theta_as %0.3f degrees\n',(theta_as*180/%pi))
printf('//Answer given in the textbook is wrong')
