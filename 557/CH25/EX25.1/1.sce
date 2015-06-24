clc; funcprot(0);

//-----------------------Important Note-------------------------------//
// Please keep intersectFunc.sci in the same folder in which this file//
// is kept and change the current working directory to the directory  //
// in which both the files are kept  using chdir "absolute path"      //
//--------------------------------------------------------------------// 


//Example 25.1

//Initializing the variables
exec("intersectFunc.sci");
Q =[0.010 0.014 0.017 0.019 0.024]';
H = [9.5 8.7 7.4 6.1 0.9]';
n = [65 81 78 68 12]';
d = 0.15;
mu = 1.14*10^-3;
rho = 1000;
g = 9.81;

//Calculations
E1 = 3+9218*Q^2; // f = 0.0025 from moody chart
Q1 = intersectFunc(H,E1,Q); 
v1 = 4*Q1/(%pi*d^2);
Re1 = rho*v1*d/mu;
E2 = 3+15486*Q^2;  // s ince f = 0.0042
Q2 = intersectFunc(H,E2,Q);
n = 0.78; // efficiency at Q2 from graph
H1 = 7.45; // From Graph
P = rho*g*H1*Q2/n;

title("Example 25.1");
xlabel("Q (m3/s):");
ylabel("H(m)");
plot(Q,H, Q,E1,Q,E2);
legend("H","E1","E2");

disp(P/100, "Power consumed (kW) :", Q2,"Flow betwen the reservoirs (m3/s) :");