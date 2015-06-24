clc;funcprot(0);//Example 9.10
//Initilisation of Variables
F4_3=0.27;...//Shape factor (for perpendicular rectangles) from charts
F5_6=0.19;...//Shape factor (for perpendicular rectangles) from charts
F5_3=0.15;...//Shape factor (for perpendicular rectangles) from charts
F4_6=0.26;...//Shape factor (for perpendicular rectangles) from charts
LA2=6;....//Length of rectangle A2 in m
LA1=LA2,LA4=LA2,LA3=LA2;....//Lengths of rectangles in m
BA2=3;....//Breath of rectangle 2 in m
BA3=4;....//Breath of rectangle 3 in m
BA4=BA3;....//Breath of rectangle 4 in m
BA1=BA2;...//Breath of rectangle 1 in m
//calculations
A1=BA1*LA1;...//Area of rectangle 1 in m^2
F1_2=(((BA1+BA4)*LA1*(F5_6)+(BA4*LA4*F4_3))-((BA2+BA3)*LA2*(F5_3)+(BA4*LA4*F4_6)))/A1;...//Shape factor for the given configuration 
disp(F1_2,"Shape factor for the given configuration :")
