exec('electrostatics.sci', -1)

//Given that
q1 = +3.1*10^-9  //in C
q4 = q1
q2 = -5.9*10^-9  //in C
q5 = q2
q3 = -3.1*10^-9  //in C

//Sample Problem 24-3
printf("**Sample Problem 24-3**\n")
//Using gauss law
flux = (q1+q2+q3)/Eo
printf("The flux through the surface is equal to %fN.m^2/C", flux)