clc;funcprot(0); //Example 7.2

//Initializing the variables 
x = 120*(2*%pi)/180; //Theta
r = 1;
v0 = 0.5;
q = 2;

//Calculations
function[y] =shi(r,theta)
    y = v0*r*sin(theta) +q*theta/(2*%pi);
endfunction 


//--Approx differentiation at a point using central difference formula--//
h=0.0000001;
at_theta=x;
at_r = r;
Vr = (shi(r,at_theta+h)-shi(r,at_theta-h))/(r*2*h);
Vth = (shi(r+h,at_theta)-shi(r-h,at_theta))/(2*h);
V = sqrt(Vr^2+Vth^2);
alpha =  atand(abs(Vth/Vr));
bet = x*180/(2*%pi)-alpha;
disp(bet, "Beta (Degree):",alpha,"Alpha (Degree) :", V, "Fluid Velocity(m/s) :");
