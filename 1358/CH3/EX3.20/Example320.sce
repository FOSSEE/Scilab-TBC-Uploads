// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 3, Example 20")
disp("Mean diameter, Dm, is given by")
disp("Dm = (Dh + Dt)/2")
Dh = 2;
Dt = 4.5;
Dm = (Dh + Dt)/2
disp("Overall efficiency, etao, is given by")
disp("etao = Power develpoed/Power available")
disp("Power available = 22/0.84 = 26.2 MW")
P = 26.2*10^6;
disp("Also, available power = rho *gHQ")
disp("Hence flow rate, Q, is given by")
rho = 1000;
g = 9.81;
H = 22;
Q = P / (rho * g * H)
disp("Now rotor speed at mean diameter")
N = 150;
Um = %pi*Dm*N/60
disp("Power given to runner = Power available * etah in MW")
etah = 0.92;
Prun = P *etah / (10^6) // in MW
disp("Theoretical power given to runner can be found by using")
disp("P = rho*QUmCw1 (Cw2 = 0)")
Cw1 = Prun * 10^6  / (rho * Q * Um)
disp("Axial velocity is given by")
disp("Cr = Q * 4/(%pi *(Dt^2 - Dh^2)")
Cr = Q*4/(%pi*(Dt^2 - Dh^2))
disp("Using velocity triangle")
disp("tan (180 -beta1) = C/(Um - Cw1)")
disp("Inlet angle,")
beta1 = 180 - atan(Cr/(Um-Cw1))*180/%pi
disp("At outlet")
disp("But Vcw2 equals to Um since Cw2 is zero. Hence")
Vcw2 = Um
beta2 = atan(Cr/Vcw2) * 180/%pi
