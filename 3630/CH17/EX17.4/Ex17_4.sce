clc;
r1=33000;
c1=0.0000001;
fc=1/(2*3.14*r1*c1);
rf1=4700;
rf2=9100;
AcL=(rf1/rf2)+1;
disp('Hz',fc,"fc=");
disp('',AcL,"AcL");//The answers vary due to round off error in f0

