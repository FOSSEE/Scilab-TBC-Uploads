exec('electrostatics.sci', -1)

//Given that
q = 1  //(say)
q1 = 8*q
q2 = -2*q
L = 1  //(say)
x = L

//Sample Problem 22-2
printf("**Sample Problem 22-2**\n")
//let the distance of proton from q1 is y
//We know that y>L
y = poly(0, 'y')
F1 = coulomb(q1, e, y)
F2 = coulomb(q2, e, y-L)
p = F1 + F2
r = roots(denom(inv(p)))
printf("the proton should be placed at a distance %1.1fL from q1", r(2))