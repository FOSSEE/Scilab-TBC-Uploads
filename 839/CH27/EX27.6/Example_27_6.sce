//clear//
clear;
clc;

//Example 27.6
//Given
G = 0.0018; //[ft/h]
//Solution
//Screen opening of 20-mesh standard screen is,
L = 0.00273; //[ft], Appendix 20
a = 1; //[Eq.27.16]
//From Example 27.5
//The volume flow rate of mother liquor in the product magma
Q = 44520/82.5; //[ft^3/h]
//Since, when z=3,
Lpr = L; //[ft]
//Using Eq.(27.28)
//drawdown time
tou = Lpr/(3*G); //[h]
//volume of the liquid in the crystallizer
Vc = tou*Q; //[ft^3]
//Total magma volume
Vmagma = Vc/0.85*7.47; //[gal]
disp('gal',Vmagma,'The magma volume in the crystallizer be');
//Using Eq.(27.44)
//The nucleation rate is
C = 10000; //[lb/h]
rho_c = 105;
B0 = 9*C/(2*rho_c*Vc*Lpr^3); //[nuclei/ft^3-h]
disp('nuclei/ft^3-h',B0,'The nucleation rate necessary is');
//Using Eq.(27.40), the zero-size particle density is
n0 = B0/0.0018; //[nuclei/ft^4]
L1 = (0:8)*10^-3;
//Using Eq.(27.27)
//Let A = log10(n), B = log10(n0)
B = log10(n0);
A = B - 1.1*10^3*L1/(2.3026);
figure(1);
plot(L1*10^3,A);
xgrid();
xlabel('L x 10^3 ft');
ylabel('log n');
title('Population density vs length');

//From Fig. 27.15c for values of z corresponding to mesh openings.
L1 = [11,14,16,19,23,27,33,38,46,54,65,78]'*10^-2;
z = L1/(tou*G*100); //[mm]
t = 0;
function f = fun(z,xm)
  f = z^3*exp(-z)/6;
endfunction
[xm]=ode(0,0,z,fun);
for i=1:length(xm)
   Diff(i) = z(i)^3*exp(-z(i))/6;
end 
figure(2);
subplot(2,1,1);
plot(z,xm);
xgrid();
xlabel('z');
ylabel('xm');
title('cumulative mass distribution');
subplot(2,1,2);
plot(z,Diff)
xgrid();
xlabel('z');
ylabel('dxm/dz');
title('differential mass distribution');
