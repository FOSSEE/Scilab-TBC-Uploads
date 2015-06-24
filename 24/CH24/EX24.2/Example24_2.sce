//Given that
x = poly(0, 'x')
E = [3*x, 4, 0]
x1 = 1.0  //in m
x2 = 3.0  //in m
y1 = 0.0  //in m
y2 = 2.0  //in m
z1 = 0.0  //in m
z2 = 2.0  //in m

//Sample Problem 24-2
printf("**Sample Problem 24-2**\n")
//top face
A = [0; 2; 0] //area per unit x
Phi_top = integrate('[3*x, 4, 0]*A', 'x', x1, x2)
printf("The flux through the top face is equal to %fN.m^2/C\n", Phi_top)
//left face
A = [-2*2; 0; 0]
Phi_left = horner(E, x1)*A
printf("The flux through the left face is equal to %fN.m^2/C\n", Phi_left)
//Right face
A = [2*2; 0; 0]
Phi_right = horner(E, x2)*A
printf("The flux through the right face is equal to %fN.m^2/C", Phi_right)