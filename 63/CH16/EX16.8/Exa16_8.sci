//Determine the maximum active tracking range of a deep space radar

A0t = 2.09e+3;
PtT = 5e+5;
A0b = 5.1e-1;

lambda = 0.12;
k = 1.38e-23;
T0 = 2.9e+2;;
dF = 5e+3;
Fb = 20; 

RmaxT = sqrt((A0t*PtT*A0b)/(lambda^2*k*T0*dF*(Fb-1)));


A0b = 5.1e-3;
Ptb = 50;
A0t = 2.09e+3;

lambda = 0.12;
k = 1.38e-23;
T0 = 2.9e+2;;
dF = 5e+3;
Ft = 1.1; 

RmaxR = sqrt((A0b*Ptb*A0t)/(lambda^2*k*T0*dF*(Ft-1)));


disp(RmaxT, 'Active tracking range of a deep space radar is (in m)')
disp(RmaxR, 'Active tracking range of a deep space radar is (in m)')
disp(RmaxR, 'Maximum Active tracking range of a deep space radar is (in m)')