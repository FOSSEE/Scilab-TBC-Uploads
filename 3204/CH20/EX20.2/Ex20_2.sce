// Initilization of variables
v_A=10 // m/s // velocity of body A
alpha_A=60 // degree // direction of body A
alpha_B=45 // degree // direction of body B
// Calculations
// (a) The velocity (v_B) for the same range is given by eq'n;
v_B=sqrt((v_A^2*sind(2*alpha_A))/(sind(2*alpha_B))) // m/s
// (b) Now velocity v_B for the same maximum height is given as,
v_b=sqrt((v_A^2)*((sind(alpha_A))^2/(sind(alpha_B))^2)) // m/s
// (c) Now the velocity (v) for the equal time of flight is;
v=(v_A*sind(alpha_A))/(sind(alpha_B)) // m/s
// Results
clc
printf('(a) The velocity of body B for horizontal range is %f m/s \n',v_B)
printf('(b) The velocity of body B for the maximum height is %f m/s \n',v_b)
printf('(c) The velocity of body B for equal time of flight is %f m/s \n',v)
