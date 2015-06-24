// Maximum elongation
M = 20; //kg
g = 9.81; //m/s^2
L = 2; //meter
E = 210e9; //210Gpa
h = 0.15; //meter
diameter = 0.015; //milimeter
A = (%pi/4)*(diameter^2) ; //area
D_st = ((M*g*L)/(E*A)) ;
D_max = D_st*(1+(1+(2*h/D_st))^0.5) ;
D_max_1 = sqrt(2*h*D_st) // another approach to find D_max
i = D_max / D_st // Impact factor
disp("mm",D_max,"Maximum elongation is")
// Maximum tensile stress
s_max = (E*D_max)/L ; //Maximum tensile stress
s_st = (M*g)/A ;//static stress
i_1 = s_max / s_st //Impact factor 
disp("Pa",s_max,"Maximum tensile stress is")
