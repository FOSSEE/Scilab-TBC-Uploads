clc; funcprot(0); //Example 23.2 

//Initializing the variables
n = 0.9;
g = 9.81;
D = 1.45;
N = 375/60;
H = 200; // Real height
x = 165; // Theta
P = 3750*10^3;
rho = 1000;

//Calculations
h = n*H;         //Effective Head
v1 = sqrt(2*g*h);
u = %pi*D*N;

n_a = (2*u/v1^2)*(v1-u)*(1-n*cosd(x));

P_b = P/n_a;
ppj = P_b/2; // Power per jet
d = sqrt(8*ppj/(rho*%pi*v1^3)) ;

disp(d,"Diameter of Jet (m) :",n_a*100, "E fficiency (%) :")
