// Value of s_x based on allowable stresses on glued joint

s_t = -750; //psi
t = -50; //degree
T_t = -500; //psi
sg_x_1 = s_t/(cosd(t)^2)
sg_x_2 = -T_t/(cosd(t)*sind(t)) 

// Value of s_x based on allowable stresses on plastic

sp_x_1 = -1100; //psi
T_t_p =600; //psi
t_p = 45; //degree
sp_x_2 = -T_t_p/(cosd(t_p)*sind(t_p)) 

// Minimum width of bar

P = 8000; //lb
A = P/sg_x_2;
b_min = sqrt(A)  //inch
disp("inch",b_min,"The minimum width of the bar is")
