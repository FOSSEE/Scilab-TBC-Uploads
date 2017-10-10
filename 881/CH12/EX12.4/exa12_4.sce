clc;
//Example 12.4
//Page No 509



//solution

C=96.6*10^-12;
L=241.56*10^-9;
ep=2.3;
c=3*10^8;

disp("From equation 12-16 ");

Vp=(1/sqrt(C*L));

disp('m/s',Vp,"Vp = ");

disp("From equation 12-24 ");

Vf=(Vp/c);

disp(Vf,"Vf = ");

disp("From equation 12-26 ");

vf=(1/sqrt(ep));

disp(vf,"Vf = ");