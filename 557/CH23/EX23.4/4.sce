clc; funcprot(0);//Example 23.4

//Initializing the variables
H = 35;
g = 9.81;
D = 2;
N = 145/60;
z = 30; // angle between vanes and direction of runner rotation
y = 28; // angle between runner blades at the outlet.

//Calculations
H_net = 0.93*H ; // since 7% head is lost
v1 = sqrt(2*g*H_net);
u = %pi*N*D;
V_r2 = u*cosd(y);
V2= u*sind(y);
V_w2 = V2*sind(y);

// Function to solve the vector for Vr1 and B1 by just re writing the parallelogram law in arranged form
function[f] = F(x)
    f(1) = u^2 + x(1)^2 + 2*u*x(1)*cosd(x(2))-v1^2;
    f(2) = x(1)*sind(x(2)) - tand(z)*(u + x(1)*cosd(x(2)));      
endfunction
X = [10  50]; // An innitial guess of vector length and angle by figure
result=fsolve(X,F);
V_r1 =result(1);
B1 = result(2);
V_w1 = u + V_r1*cosd(B1)
E = (u/g)*(V_w1 - V_w2);
n = E/H;
disp(n*100,"Efficiency (%):",B1, "Blade angle at inlet (Degree) :" ); 