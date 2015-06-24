clear all; clc;

disp("Scilab Code Ex 7.2 : ")

//Given:
V = 80; //kN
thick_1 = 20/1000; //m
thick_2 = 15/1000; //m
l = 300/1000; //m
y = 100/1000; //m
h = 2*y;
y_dash = y +thick_1/2;

//Part(a):

I1 = (thick_2*(h^3))/12;
I2 = (l*(thick_1^3))/12;
I3 = (l*thick_1*(y_dash)^2);
I = I1+2*(I2+I3); //Moment of inertia

Q_b = y_dash*l*thick_1;
//At B'
tou_b_dash = (V*Q_b)/(I*l*1000);
//At B
tou_b = (V*Q_b)/(I*thick_2*1000);

//At C:
Q_c = (y_dash*l*thick_1)+(y*thick_2*y/2);
tou_c = (V*Q_c)/(I*thick_2*1000);

//Part(b)


y0 = -0.1;
y1 = 0.1;

function Q =f(y),Q = ((0.735 - (7.5*y*y))*10^-3),
endfunction
Int =intg(y0,y1,f)

V_w = (V*Int*thick_2)/(I*thick_2);

//Display:

printf("\n\nThe shear stress at B dash             = %1.2f MPa',tou_b_dash);
printf("\nThe shear stress at B                  = %1.1f MPa',tou_b);
printf("\nThe shear stress at C                  = %1.1f MPa',tou_c);
printf("\nThe shear force resisted by the web    = %1.1f kN',V_w);

//------------------------------------------------------------------------END----------------------------------------------------------------------------------
