//ques12
clc
disp('simplified equations are :');
disp('(E-3)ux+vx=x.....(i) 3ux+(E-5)*vx=4^x......(ii) ');
disp('Simplifying we get (E^2-8E+12)ux=1-4x-4^x ');
syms  c1 c2 c3 x
disp('Cumulative function is given by E^2-8*E+12    =0 ');
E=poly(0,'E');
f=E^2-8*E+12;
r=roots(f);
disp(r);
disp('There for the complete solution is = cf + pi');
cf=c1*r(1)^x+c2*r(2)^x;
disp('CF=');
disp(cf);
//particular integral calulation manually
disp('solving for PI ');
disp('We get PI=');
pi=-4/5*x-19/25+4^x/4;
ux=cf+pi;
disp('ux=');
disp(ux);
disp('Putting in (i) we get vx=');
vx=c1*2^x-3*c2*6^x-3/5*x-34/25-4^x/4;
disp(vx);
