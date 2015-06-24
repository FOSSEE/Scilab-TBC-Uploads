// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 5, Example 14")
disp("Impeller speed is U in m/s")
rt = 0.45;//m
N = 5400;//rpm
U = 2*%pi*rt*N/60
disp("From velocity triangle")
disp("U = Ca*(tanalpha1 + tanbeta1)")
alpha1 = 28;
beta1 = 58;
Ca = U/(tan(alpha1*%pi/180)+tan(beta1*%pi/180))
disp("Flow area is A in m2")
rtip=rt;//m
rroot=0.42;//m
A = %pi*(0.45^2 - 0.42^2)
disp("Mass flow rate is m in kg/s")
rho = 1.5;//kg/m3
m = rho*A*Ca
disp("Power absorbed by the compressor P in kW")
disp(" = Tau*U(Cw2 - Cw1)")
disp(" = Tau*U*Ca*(tanalpha2-tanalpha1)")
alpha2 = beta1;
Tau = 0.93;
P = Tau*U*Ca*(tan(alpha2*%pi/180)-tan(alpha1*%pi/180))*1.001
disp("Total Power in kW")
Pt = m*P/1000*1.017
disp("and whirl velocity at impeller tip Cwt in m/s")
Cwt = Ca*tan(alpha1*%pi/180)
disp("Now using free vortex condition")
disp("r Cw = constant")
disp("[ rhCw1h = rtCw1t (where subscripts h for hub and t for tip)")
rh = 0.4;
Cw1h = rt*Cwt/rh
Cw2t = Ca*tan(alpha2*%pi/180)
Cw2h = Cw2t*rt/rh
disp("Therefore, the flow angles at the hub are")
alpha1h = atan(Cw1h/Ca)*180/%pi
Uh = 2*%pi*rh*N/60
beta1h = atan((Uh-Ca*tan(alpha1h*%pi/180))/Ca)*180/%pi
alpha2h = atan(Cw2h/Ca)*180/%pi
beta2h = atan((Uh-Ca*tan(alpha2h*%pi/180))/Ca)*180/%pi
disp("Finally, the degree of reaction at the hub is DOF in %")
DOF = Ca*(tan(beta1h*%pi/180)+tan(beta2h*%pi/180))/(2*Uh) *100
