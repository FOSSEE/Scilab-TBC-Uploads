// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 2, Example 18")
disp("Specific speed N in rpm")
Ns = 38;
He = 70;
H = He/2;
Q = 55/1000;//in m3/s
rho = 1000;
g = 9.81;
N = Ns * (H)^(3/4)  /  Q^(1/2)
disp("Power Required P in kW")
P = rho*g*Q*He/(0.76*1000)
Hmano = 0.65*H;
beta2 = 28;
//Cr2 = 0.14*U2
disp("From velocity triangle at outlet")
disp("tan(beta2) = Cr2/(U2 - Cw2) or tan(28) = 0.14U2/ (U2 - Cw2)")
disp("U2/(U2 - Cw2) = 0.5317/0.14 = 3.798------(A)")
disp("As the flow at entrance is radial and alpha1 = 90, the fundamental equation of pump would be")
disp("Hmano/etamano = U2*Cw2/g")
disp("Where etamano manometric efficiency of pump which is 65%.")
disp("Therefore, 35/0.65 = U2*Cw2/g")
disp("U2*Cw2 = 35 * 9.81/ 0.65")
disp("Cw2 = 528.23/U2------(B)")
disp("Substituting for Cw2 in Eq. (A) and solving U2")
U2 = 26.78
D2 = U2 * 60 /(%pi *N)
disp("Where D2 is in meters")
