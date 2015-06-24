exec('electrostatics.sci', -1)
exec('degree_rad.sci', -1)

//Given that
Q = 1  //(say)
q1 = +2*Q
q2 = -2*Q
q3 = -4*Q
d = 1  //(say)
theta = dtor(30)

//Sample Problem 23-2
printf("**Sample Problem 23-2**\n")
E1 = coulomb(q1, 1, d)*[cos(theta), sin(theta)]
E2 = coulomb(q2, 1, d)*[-cos(theta), sin(theta)]
E3 = coulomb(q3, 1, d)*[-cos(theta), -sin(theta)]
E = E1 + E2 + E3
printf("The net electric field at origin is equal to %eQ/d^2 N/C", norm(E))