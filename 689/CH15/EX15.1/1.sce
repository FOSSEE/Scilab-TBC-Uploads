clc; funcprot(0);
//Example 15.1 Thrust and power coefficients

// Initialisation of variables
P = 500*550;        // Power in ft-lb/sec
V = 180*1.467;      // Velocity in ft/sec
n = 1900/60;        // Rotaion per second
D = 9;              // Diameter in ft
rho = 0.001756;


// Calculations
Cp = P/(rho*n^3*D^5);
V_By_nD = V/(n*D);
Ct = 0.074;             // For corrosponding Cp and V/nD from figure 15.3.3
T = Ct*rho*n^2*D^4;
Eff = Ct*V_By_nD/Cp;

//Results 
disp(Eff*100,"Propeller Efficiency (%) : ",T,"Thrust (lb) :") ;
