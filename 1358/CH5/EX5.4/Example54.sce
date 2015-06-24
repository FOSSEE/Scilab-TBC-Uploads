// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 5, Example 4")
disp("Calculation at mean radius:")
disp("Wc = U(Cw2 - Cw1) = U*DeltaCw")
disp("or")
disp(" Cp(T02 - T01) = CpDeltaT0s = lambda*U*DeltaCw")
Cp = 1005;
DeltaT0s = 15;
lambda = 0.85;
Um = 185;
DeltaCw = Cp*DeltaT0s/(lambda*Um)
disp("Since the degree of reaction (Fig. 5.14) at the mean radius is 50%, alpha1 = beta2, and alpha2 = beta1. From the velocity triangle at the mean,")
disp("Um = DeltaCw + 2Cw1")
disp("Cw1 in m/s alpha1 in degrees")
Cw1 = (Um - DeltaCw)/2//m/s
Ca = 140;
alpha1 = atan(Cw1/Ca)*180/%pi
beta2 = alpha1
beta1 = atan((DeltaCw + Cw1)/Ca)*180/%pi
alpha2 = beta1
disp("Calculation at the blade tip: Using the free vortex diagram (Fig. 5.15), Velocity in m/s")
disp("(DeltaCw * U)t = (DeltaCw * U)m")
Ut = 240;
DeltaCwt =DeltaCw*Um/Ut
Cwt = Cw1*Um/Ut
alpha1t = atan(Cwt/Ca)*180/%pi
disp("From the velocity triangle at the tip, x2 + DeltaCwt + Cwt = Ut")
x2 = Ut-DeltaCwt - Cwt
beta1t = atan((DeltaCwt+x2)/Ca)*180/%pi
alpha2t = atan((Cwt+DeltaCwt)/Ca)*180/%pi
beta2t = atan(x2/Ca)*180/%pi
disp("Calculation at the blade root: (DeltaCwr * U)r = (DetaCw * U)m")
Ur = Ca;
DeltaCwr = DeltaCw*Um/Ur
Cwr = Cw1*Um/Ur
Cw2tip = Ca*tan(alpha2t*%pi/180)
Cw2root = Cw2tip*Ut/Ur
alpha1r = atan(Cwr/Ca)*180/%pi
x3 = Cw2root-Ur
beta1r = atan((Ur-Cwr)/Ca)*180/%pi
alpha2r = atan(Cw2root/Ca)*180/%pi
beta2r = -atan(x3/Ca)*180/%pi
