// Initilization of variables
v_o=500 // m/s // velocity of the projectile
alpha=30 // angle at which the projectile is fired
t=30 // seconds
g=9.81 // m/s^2 // acc due to gravity
// Calculations
v_x=v_o*cosd(alpha) // m/s // Initial velocity in the horizontal direction
v_y=v_o*sind(alpha) // m/s // Initial velocity in the vertical direction
// MOTION IN HORIZONTA DIRECTION:
V_x=v_x // m/s // V_x=Horizontal velocity after 30 seconds
// MOTION IN VERTICAL DIRECTION: // using the eq'n v=u+a*t
V_y=v_y-(g*t) // m/s // -ve sign denotes downward motion
// Let the Resultant velocity be v_R. It is given as,
v_R=sqrt((V_x)^2+(-V_y)^2) // m/s
theta=atand((-V_y)/V_x) // degree // direction of the projectile
// Results
clc
printf('The velocity of the projectile is %f m/s \n',v_R) // The answer of velocity is wrong in the text book.
printf('The direction of the projectile is %f degree \n',theta) // -ve value of theta indicates that the direction is in downward direction
