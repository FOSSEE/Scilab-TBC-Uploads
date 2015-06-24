clc
// H_L=1.2*v^2/2/g

// H_L=4*f*L_eq/d*V^2/2/g

// L_eq=60*d

// H_L=240*f*v^2/2/g
// Combining the two equations for head loss 
// 1.2*v^2/2/g=240*f*v^2/2/g

f=1.2/240;
disp("Friction factor =")
disp(f)