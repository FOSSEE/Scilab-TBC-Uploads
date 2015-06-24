//to calculate armature current,speed and value of external resistance in field ckt

clc;
V=250;
Ia=5;
Ra=.6;
n=1000;
k=(V-Ia*Ra)/(2*%pi*n/60);
T=100;
Ia=T/k;disp(Ia,'armature current(A)');
w_m=(V-Ia*Ra)/k;
n=(60*w_m)/(2*%pi);disp(n,'speed(rpm)');

Rf=150;
If=V/Rf;
kk=k/If;
Iaa=44.8;
nn=1200;
Iff=(V-Iaa*Ra)/(kk*2*%pi*nn/60);
Rftot=V/Iff;
Rfext=Rftot-Rf;
disp(Rfext,'external resistance(ohm)');