d_1 = 4 ; // inner diameter (inch)
d_2 = 4.5 ; //outer diameter (inch)
P = 26000 ; // pressure in pound
L = 16; // Length of cylinder (inch)
del = 0.012 ; // shortening of post (inch)
A = (%pi/4)*((d_2^2)-(d_1^2))  //Area (inch ^2)
s = P/A;  // stress
disp("psi",s,"compressive stress in the post is")
e = del / L;  // strain
disp(e,"compressive strain in the post is")
