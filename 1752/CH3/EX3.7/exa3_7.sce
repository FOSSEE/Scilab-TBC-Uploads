//Exa 3.7
clc;
clear;
close;
//given data
T_0=100;// in degree C
T_infinite=25;// in degree C
d=5*10^-2;// in meter
L=15*10^-2;// in meter
h=8;// in W/m^2K
k=20;// in W/mK 
rho=%pi*d;// in meter
Ac=%pi*d^2/4;// in square meter
m=sqrt(h*rho/(k*Ac));

//(i) Temperature distribution in the rod
 disp("(i) Temperature distribution in the rod")
 disp(" (T-T_infinite)/(T_0-T_infinite)= (cosh(m*(L-x))+ h/(k*m)*sinh(m(L-x)))/(cosh(m*L)+h/(k*m)*sinh(m*L))")

//(ii) Temperature at free end i.e. at 
x=L;
// Formula  (T_L-T_infinite)/(T_0-T_infinite)= 1/(cosh(m*L)+h/(k*m)*sinh(m*L) )
T_L=(1/(cosh(m*L)+h/(k*m)*sinh(m*L) ))*(T_0-T_infinite)+T_infinite;
disp("(ii) Temperature at free end is : "+string(T_L)+" degree C");

//(iii) Heat flow out the source means heat transfer from the fin
q_f=sqrt(h*rho*k*Ac)*(T_0-T_infinite)*[(h/(k*m)+tanh(m*L))/(1+h*tanh(m*L)/(k*m))];
disp("(iii) Heat flow out the source : "+string(q_f)+" watt");

// (iv) Heat flow rate at free end
q_L=h*Ac*(T_L-T_infinite);
disp("(iv) Heat flow rate at free end is : "+string(q_L)+" watt");
