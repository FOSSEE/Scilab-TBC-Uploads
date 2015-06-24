//Illustration cubic spline interpolation with unequal difference
clc;
clear;
close();
//with free boundary conditions
xi = [0 1 3 3.5 5];
yi = [1.00000 0.54030 -0.98999 -0.93646 0.28366];
n = 4;
h0 = xi(2)-xi(1);
h1 = xi(3)-xi(2);
h2 = xi(4)-xi(3);
h3 = xi(5)-xi(4);
//After imposing free boundary conditions the matrix we get
A = [2 1 0 0 0;
1 3 1/2 0 0;
0 1/2 5 2 0;
0 0 2 16/3 2/3;
0 0 0 2/3 4/3];
C = [-1.37910 ; -2.52682 ; -0.50536 ; 2.26919 ; 1.62683] ;
format('v',8);
B = inv(A)*C;
//it gives
diff1_y0 = -0.33966;
diff1_y1 = -0.69978;
diff1_y2 = -0.17566;
diff1_y3 = 0.36142;
diff1_y4 = 1.03941;
//cubic polynomial for 3<=x<=3.5
x = poly(0,'x')
s2x = yi(3)*[{(x-3.5)*(x-3.5)/(0.5*0.5)}+{2*(x-3)*(x-3.5)*(x-3.5)/(0.5*0.5*0.5)}] + yi(4)*[{(x-3)*(x-3)/(0.5*0.5)}-{2*(x-3.5)*(x-3)*(x-3)/(0.5*0.5*0.5)}] +  diff1_y2*{(x-3)*(x-3.5)*(x-3.5)/(0.5*0.5)} + diff1_y3*{(x-3.5)*(x-3)*(x-3)/(0.5*0.5)};
x = 3.14159;
disp(horner(s2x,x) , 'value of s2x at 3.14159 : ');
//with clamped boundary conditions
diff1_y0 = -sin(0);
diff1_y4 = -sin(5);
//matrix form
A = [3 0.5 0;0.5 5 2 ; 0 2 16/3];
C = [-2.52682 ; -0.50536 ; 1.62991];
B = inv(A)*C;
//it gives
diff1_y1 = -0.81446;
diff1_y2 = -0.16691;
diff1_y3 = 0.36820;
s2x = yi(3)*[{(x-3.5)*(x-3.5)/(0.5*0.5)}+{2*(x-3)*(x-3.5)*(x-3.5)/(0.5*0.5*0.5)}] + yi(4)*[{(x-3)*(x-3)/(0.5*0.5)}-{2*(x-3.5)*(x-3)*(x-3)/(0.5*0.5*0.5)}] +  diff1_y2*{(x-3)*(x-3.5)*(x-3.5)/(0.5*0.5)} + diff1_y3*{(x-3.5)*(x-3)*(x-3)/(0.5*0.5)};
x = 3.14159;
disp(horner(s2x,x) , 'value of s2x at 3.14159 : ');