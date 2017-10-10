clc;
r1=10000;
r2=10000;
c1=0.00000001;
c2=0.00000002;
fc2=ceil(1/(2*3.14*(r1*r2*c1*c2)^0.5));
r3=15000;
r4=30000;
c3=0.00000001;
c4=0.00000001;
fc1=1/(2*3.14*(r3*r4*c3*c4)^0.5);
BW=(fc2-fc1);
f0=(fc2*fc1)^0.5;
Q=(f0/BW);
disp('Hz',fc2,"fc2=");//The answers vary due to round off error
disp('Hz',fc1,"fc1=");//The answers vary due to round off error
disp('Hz',BW,"BW=");//The answers vary due to round off error
disp(' ',Q,"Q=");//The answers vary due to round off error
