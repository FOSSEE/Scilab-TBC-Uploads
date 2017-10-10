clc; funcprot(0);
//Example 15.7 Thrust Horsepower of a constant speed propeller at an altitude
// Initialisation of variables
V = 125*1.467;      // Velocity in ft/sec
n = 1800/60;        // Rotaion per second
D = 9.5;              // Diameter in ft
P = 600*550;
rho = 0.001756;

// Calculations
//For Beta = 23 degree
Cp = P/(rho*n^3*D^5);
ThrustCoeff = rho*n^2*D^4;
VeloCoeff = n*60*D/88;

VBynD = [1 0.9 0.8 0.7 0.6];
Ct = [0.073 0.081 0.087 0.096 0.108];              // From figure 15.4 for corrospondiong values of V/nD at Cp = 0.066
T = Ct*ThrustCoeff;
V = VBynD*VeloCoeff;

Result = zeros(5,6);
Result(:,1) = VBynD';
Result(:,2) = Ct';
Result(:,3) = Result(:,2)/Cp;
Result(:,4) = diag(diag(Result(:,3))*diag(Result(:,1)));        // Using equation 15.5.5
Result(:,5) = Result(:,4)*P/550;
Result(:,6) = V';
//Results 

disp(Result,"!! V/nD   Ct        Ct/Cp        Efficiency   thp          V(mph)  !!") ;
