//Example 6.2
clc;
disp('x(t)=(1/2%pi)cos(4000%pi*t)cos(1000%pi*t)');
w1=5000*%pi;
w2=3000*%pi;
f1=w1/(2*%pi);
f2=w2/(2*%pi);
if f1>f2 then
    nyquist_rate=2*f1;
else
    nyquist_rate=2*f2;
end
nyquist_interval=1/nyquist_rate;
disp(nyquist_rate,'Nyquist rate=');
disp(nyquist_interval,'Nyquist interval in seconds');