//Example 1.17<i>
//Determine the power and the rms value of the signal
clc;
t=0:0.001:10;
y=5*cos(50*t+%pi/3);
P=(integrate('5^2*(cos(50*t))^2','t',0,2*%pi))/(2*%pi);
rmsvalue=sqrt(P);
disp(P,'The power of the given signal is:');
disp(rmsvalue,'the rms value is:');
//Example 1.17<ii>
//Determine the power amd rms value of the signal
clc;
t=0:0.001:10;
x1=10*sin(50*t+%pi/4);
x2=16*cos(100*t+%pi/3);
P1=(integrate('10^2*(sin(50*t))^2','t',0,2*%pi))/(2*%pi);
P2=(integrate('16^2*(cos(100*t))^2','t',0,2*%pi))/(2*%pi);
P=P1+P2;
rmsvalue=sqrt(P);
disp(P,'The power of the given signal is:');
disp(rmsvalue,'the rms value is:');
//Example 1.17 <iii>
//Determine the power and rms value of the signal
clc;
t=0:0.001:10;
x1=5*cos(15*t);
x2=5*cos(5*t);
P1=(integrate('5^2*(cos(15*t))^2','t',0,2*%pi))/(2*%pi);
P2=(integrate('5^2*(cos(5*t))^2','t',0,2*%pi))/(2*%pi);
P=P1+P2;
rmsvalue=sqrt(P);
disp(P,'The power of the given signal is:');
disp(rmsvalue,'the rms value is:');


