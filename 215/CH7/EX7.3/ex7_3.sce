clc
//Example 7.3
//Let wc be the energy stored in capacitor
C=20*10^-6; R=10^6;
t=0:0.001:0.5
v=100*sin(2*%pi*t)
wc=0.5*C*v^2
plot(t,wc)
xtitle('wC vs t','t in sec','wC in J')
//Let iR be the current in the resistor
iR=v/R
//Let pR be the power dissipated in the resistor
pR=iR^2*R
//If wR is the energy dissipated in the resistor
syms s
wR=integ(100*(sin(2*%pi*s))^2,s,0,0.5)
disp(wR,'wR=')

