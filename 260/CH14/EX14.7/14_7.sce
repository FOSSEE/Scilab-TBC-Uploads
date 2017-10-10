//Eg-14.7
//pg-593

clear 
clc
close()

x = [0 0.2 0.8 1];

//Using the boundary conditions and the equations at the internal points we have 4 equations and 4 unknowns 

A = [-7.0004 8.1966 -2.1964 1.0001;-0.9996 2.1955 -8.1957 6.9999;13.6609 -24.2685 13.7324 -5.1247;-3.6594 10.2665 -27.7312 19.1244];

B = [0;1;0;0];

X = inv(A)*B;

printf('y0 = %f    y1 = %f\n y2 = %f    y3 = %f\n',X(1),X(2),X(3),X(4))

plot(x,X,'ks')
legend('Two point OC')
xlabel('x')
ylabel('y')