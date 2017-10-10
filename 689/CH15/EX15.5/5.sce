clc; funcprot(0);
//Example 15.5 Thrust of a constant speed propeller
// Initialisation of variables
V = 125*1.467;      // Velocity in ft/sec
n = 1800/60;        // Rotaion per second
D = 9.5;              // Diameter in ft
P = 600*550;
rho = 0.002378;

// Calculations
//For Beta = 23 degree
Cp = P/(rho*n^3*D^5);
ThrustCoeff = rho*n^2*D^4;
VeloCoeff = n*60*D/88;
5
VBynD = linspace(0.5,0,6);
Ct = [0.09 0.101 0.112 0.122 0.132 0.142];              // From figure 15.4 for corrospondiong values of V/nD at Cp = 0.066
T = Ct*ThrustCoeff;
V = VBynD*VeloCoeff;

Result = zeros(6,4);
Result(:,1) = VBynD';
Result(:,2) = Ct';
Result(:,3) = T';
Result(:,4) = V';
//Results 

disp(Result,"!! V/nD   Ct       T            V(mph)  !!") ;
