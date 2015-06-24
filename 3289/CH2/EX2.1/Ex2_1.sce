clc;

radius=((sqrt(195^2+130^2))*10^(-6));
disp(radius,"radius of the circle in degree = ")
theta1=(atand(130/195))
disp(theta1,"pricipal stresses in degree");// displaying result
epsilonx=510*10^(-6)
epsilony=120*10^(-6)
epsilon=(epsilonx+epsilony)/2
disp(epsilon,"distance between O and c=")

//solution a
angle=60- theta1
disp(angle,"angle of ACA1 in degree = ")// displaying result
epsilonx1=epsilon+radius*cosd(26.3)
disp(epsilonx1,"strains in x axis= ")// displaying result
epsilony1=epsilon-radius*cosd(26.3)
disp(epsilony1,"strains in y axis= ")// displaying result
gammaxy=-2*(radius*sind(26.3))
disp(gammaxy,"shear strain")// displaying result

//solution b
epsilon1=epsilon+radius
disp(epsilon1,"strains in x axis= ")// displaying result
epsilon2=epsilon-radius
disp(epsilon2,"strains in x axis= ")// displaying result

//solution c
gammamax=-+468*10^(-6)
disp(gammamax,"maxi shear stress= ")
