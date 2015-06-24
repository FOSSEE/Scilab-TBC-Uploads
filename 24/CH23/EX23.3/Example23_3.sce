exec('electrostatics.sci', -1)
exec('degree_rad.sci', -1)

//Given that
Q = 1  //(say)
A = dtor(120)
r = 1  //(say)

//Sample Problem 23-3
printf("**Sample Problem 23-3**\n")
Eunit_angle = coulomb(Q/A, 1, r)
//overall only x-component will survive
E = integrate('Eunit_angle*cos(theta)', 'theta', -A/2, A/2)
printf("The electric field due to arc at point P is equal to %eQ/r^2 N/C", E)