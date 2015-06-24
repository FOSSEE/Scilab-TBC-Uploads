//clear//
clear;
clc;

//Example 30.2
//Given
//From Table 30.2
V = linspace(0.5,6,12)'; //[L]
t1 = [17.3,41.3,72,108.3,152.1,201.7]'; //[s]
t2 = [6.8,19,34.6,53.4,76,102,131.2,163]'; //[s]
t3 = [6.3,14,24.2,37,51.7,69,88.8,110,134,160]'; //[s]
t4 = [5,11.5,19.8,30.1,42.5,56.8,73,91.2,111,133,156.8,182.5]'; //[s]
t5 = [4.4,9.5,16.3,24.6,34.7,46.1,59,73.6,89.4,107.3]'; //[s]
figure(1);
plot(V(1:length(t1)),t1./V(1:length(t1)));
plot(V(1:length(t2)),t2./V(1:length(t2)),'r');
plot(V(1:length(t3)),t3./V(1:length(t3)),'g');
plot(V(1:length(t4)),t4./V(1:length(t4)),'k');
plot(V(1:length(t5)),t5./V(1:length(t5)),'y');
xgrid();
xlabel('V (L)');
ylabel('t/V (s/L)');
legend('deptaP = 6.7','deptaP = 16.2','deptaP = 28.2','deptaP = 36.3','deptaP = 49.1');
title('t/V vs V');

deltaP = [965,2330,4060,5230,7070]'; //[lbf/ft^2]
//From Fig. 30.15
//Slope(Kc/2)
slope = [10440,5800,3620,3060,2400]'; //[s/ft^6]
Kc = slope*2; //[s/ft^6]
//Intercept(1/q0)
Inter = [800,343,267,212,180]'; //[s/ft^3]
//Viscosity of water
muw = 5.95*10^-4; //[lb/ft-s], from Appendix 14
//Filter area
A = 440/30.48^2; //[ft^2]
//concentration
c = 23.5*28.31/454; //[lb/ft^3]
gc = 32.14;
//Using Eq.(30.22)
Rm = A*gc/muw*deltaP.*(Inter)/10^10;  //[ft^-1*10^10]
//Using Eq.(30.24)
alpha = A^2*gc/(c*muw)*deltaP.*(Kc)/10^11; //[ft/lb *10^-11]
figure(2);
plot2d(deltaP,Rm);
xgrid();
xlabel('deltaP (lbf/ft^2)');
ylabel('Rm (ft^-1*10^-10)');
title('Rm vs deltaP');
figure(3);
plot2d(log(deltaP),log(alpha));
xgrid();
xlabel('deltaP (lbf/ft^2)');
ylabel('alpha (lb/ft*10^-11)');
title('alpha vs deltaP');
//Form 30.17
disp(Rm,'Rm (ft^-1*10^-10) =');
disp(alpha,'alpha (lb/ft*10^-11) =');
alpha0 = 1.75*10^11/1000^0.26;
disp('alpha = 2.9*10^10*deltaP^2.6','Emperical Equation for the cake');
