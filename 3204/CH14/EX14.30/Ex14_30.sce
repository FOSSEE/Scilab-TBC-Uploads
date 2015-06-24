// Initilization of variables
W=1 // kg/m // weight of the bar
L_AB=0.6 // m // length of segment AB
L_BC=0.30 // m // length of segment BC
g=9.81 // m/s^2 // acc due to gravity
// Calculations
// Consider the respective F.B.D.
theta_1=atand(5/12) // slope of bar AB // here theta_1= atan(theta)
theta_2=asind(5/13) // theta_2=asin(theta)
theta_3=acosd(12/13) // theta_3=acos(theta)
M_AB=L_AB*W // kg acting at D // Mass of segment AB
M_BC=L_BC*W // kg acting at E // Mass of segment BC
// The various forces acting on the bar are:
// Writing the eqn's of dynamic equilibrium
Y_A=(L_AB*g)+(L_BC*g) // N // sum F_y=0
// Using moment eq'n Sum M_A=0:Here,in this eq'n the values are as follows,
AF=L_BC*cosd(theta_3) 
DF=L_BC*sind(theta_2)
AH=(L_AB*cosd(theta_3))+((L_BC/2)*sind(theta_2))
IG=(L_AB*sind(theta_2))-((L_BC/2)*cosd(theta_3))
// On simplifying and solving moment eq'n we get a as,
a=((2*L_AB*L_BC*g*sind(theta_2))-(L_BC*g*(L_BC/2)*cosd(theta_3)))/((2*L_AB*L_BC*cosd(theta_3))+(L_BC*(L_BC/2)*sind(theta_2))) // m/s^2
X_A=0.9*a //N // from eq'n of dynamic equilibrium
R_A=sqrt(X_A^2+Y_A^2) // N // Resultant of R_A
alpha=atand(Y_A/X_A) // degree
// Results
clc
printf('The acceleration is %f m/s^2 \n',a)
printf('The reaction at A (R_A) is %f N \n',R_A)
printf('The angle made by the resultant is %f degree \n',alpha)
