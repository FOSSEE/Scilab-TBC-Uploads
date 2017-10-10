//Caption: Program to find the phase angle between two vectors
//Example1.2
//page 11
clc;
clear
Q = [4,5,2]; //point Q
x = Q(1);
y = Q(2);
z = Q(3);
G = [y,-2.5*x,3]; //vector field
disp(G,'G(rQ) =')
aN = [2/3,1/3,-2/3]; //unit vector- direction of Q
G_dot_aN = sum(G.*aN); //dot product of G and aN
disp(G_dot_aN,'G.aN =')
G_dot_aN_aN = G_dot_aN*aN;
disp(G_dot_aN_aN,'(G.aN)aN=')
teta_Ga = 2 * atand(norm(G*norm(aN) - norm(G)*aN) / norm(G * norm(aN) + norm(G) * aN))
 //phase angle between G and unit vector aN
disp(teta_Ga,'phase angle between G and unit vector aN in degrees =')
//Result
// G(rQ) =       5.  - 10.    3.  
// G.aN =      - 2.  
// (G.aN)aN =     - 1.3333333  - 0.6666667    1.3333333  
// phase angle between G and unit vector aN in degrees =   99.956489