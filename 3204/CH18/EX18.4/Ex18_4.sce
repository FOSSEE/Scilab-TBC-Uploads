// Initilization of variables
e=0.90 // coefficient o restitution
v_a=10 // m/s // velocity of ball A
v_b=15 // m/s // velocity of ball B
alpha_1=30 // degree // angle made by v_a with horizontal
alpha_2=60 // degree // angle made by v_b with horizontal
// Calculations
// The components of initial velocity of ball A:
v_a_x=v_a*cosd(alpha_1) // m/s
v_a_y=v_a*sind(alpha_1) // m/s
// The components of initial velocity of ball B:
v_b_x=-v_b*cosd(alpha_2) // m/s
v_b_y=v_b*sind(alpha_2) // m/s
// From eq'n 1 & 2 we get,
v_ay=v_a_y // m/s // Here, v_ay=(v'_a)_y
v_by=v_b_y // m/s // Here, v_by=(v'_b)_y
// On adding eq'n 3 & 4 we get,
v_bx=((v_a_x+v_b_x)+(-e*(v_b_x-v_a_x)))/2 // m/s // Here. v_bx=(v'_b)_x
// On substuting the value of v'_b_x in eq'n 3 we get,
v_ax=(v_a_x+v_b_x)-(v_bx) // m/s // here, v_ax=(v'_a)_x
// Now the eq'n for resultant velocities of balls A & B after impact are,
v_A=sqrt(v_ax^2+v_ay^2) // m/s
v_B=sqrt(v_bx^2+v_by^2) // m/s
// The direction of the ball after Impact is,
theta_1=atand(-(v_ay/v_ax)) // degree
theta_2=atand(v_by/v_bx) // degree
// Results
clc
printf('The velocity of ball A after impact is %f m/s \n',v_A)
printf('The velocity of ball B after impact is %f m/s \n',v_B)
printf('The direction of ball A after impact is %f degree \n',theta_1)
printf('The direction of ball B after impact is %f degree \n',theta_2)
// Her we use, (1) v'_a & v'_b as v_A & v_B. 
