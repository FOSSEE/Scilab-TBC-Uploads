// SAMPLE PROBLEM 5/8
clc;funcprot(0);
// Given data
OCbar=0.250;// m
omega=2;// rad/s
OAbar=0.100;// m
OBbar=0.050;// m
ABbar=0.075;// m

// Calculation
// Solution I (Vector)
r_A=[0,0.100,0];// (i,j,k) m
r_B=[-0.75,0,0];// (i,j,k) m
r_AB=[-0.175,0.50,0];// (i,j,k) m
// omega_OA*r=(omega_CB*r_B)+(omega_AB*r_AB);
// omega_OA=omega_OA*k
// omega_CB=2k
// omega_AB=omega_ABk
// Matching coefficients of the respective i- and j-terms gives
omega_AB=-(25*6)/(25*7);// rad/s
omega_OA=(50*omega_AB)/100;// rad/s
printf("\n(I)The angular velocity of OA,omega_OA=%0.3f rad/s \n   The angular velocity of AB,omega_AB=%0.3f rad/s",omega_OA,omega_AB);
// Solution II (Scalar-Geometric)
r_A=0.100;// m
r_B=0.075;// m
v_B=r_B*omega;// m/s
tantheta=(OAbar-OBbar)/(OCbar-r_B);
// v_AB=v_B/ cos(theta);
// ABbar= (OCbar-r_AB)/ cos(theta);
v_A=v_B*tantheta;// m/s
omega_AB=(v_B)/(OCbar-r_B);// rad/s CW
omega_OA=v_A/OAbar;// rad/s CW
printf("\n(II)The angular velocity of OA,omega_OA=%0.3f rad/s \n    The angular velocity of AB,omega_AB=%0.3f rad/s",omega_OA,omega_AB);
