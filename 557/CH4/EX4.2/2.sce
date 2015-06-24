clc;funcprot(0);//Example 4.2

//Initializing the variables all unknowns are assigned 0

d = [0.05 0.075 0 0.030];
Q = [0 0 0 0];
V = [0 2 1.5 0];
//Calculations
A2 = %pi*d(2)^2/4;
Q(2) =A2*V(2);
Q = [Q(2) Q(2) Q(2)/1.5 0.5*Q(2)/1.5];
d(3) = (Q(3)*4/(V(3)*%pi))^0.5;
A = %pi*d^2/4;
V(1) = V(2)*(A(2)/A(1));
V(4)=Q(4)/A(4);

disp([d*1000;A;Q;V]' , "! Diameter(mm)  Area(m2)   Flow Rate(m3/s) Velocity(m/s) !");   