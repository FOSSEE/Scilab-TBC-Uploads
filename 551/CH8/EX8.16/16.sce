clc

// dp_c/dv=0
// d^2 p/dv^2=0

// p_cp=R0*T_cp/(v_cp-b) - a/v_cp^2

// As T_cp is constant 
// dp_cp/dv_cp=(-R0*T_cp)/(v_cp-b)^2 + 2*a/v_cp^3 = 0

// d^2 p_cp/dv_cp=2*R0*T_cp/(v_cp-b)^3 - 6*a/v_cp^4 = 0

// Solving these we get v_cp=3*b;
// 2*a/v_cp^3 - R0*T_cp/[v_cp-1/3*v_cp]^2

//a=9/8*R0*T_cp*v_cp

//Z_cp=p_cp*v_cp/R0/T_cp

Z_cp=3/2-9/8;

disp("Z_cp=")
disp(Z_cp)