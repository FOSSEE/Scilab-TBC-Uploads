clear;
clc;
c=3*10^8,f=30*10^6,E=2*10^-3;
l=c/f;
n=120*%pi,R=73;
format('v',5);
Gdmax=n/(%pi*R);
format('v',6);
Amax=(l^2 /(4*%pi))*Gdmax;
disp(Amax,'Maximum effective area');
Pr=(E*E*Amax)/(2*n);
disp(Pr*(10^9),'Power rerceived in nWatt')