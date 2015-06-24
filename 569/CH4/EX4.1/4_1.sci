// calculating the temperature after 1.5 s
clc;
th0=100;
t=1.5;
tc=3.5;
th=th0*[1-exp(-t/tc)];
disp(th,'temperature after 1.5 s (degree C)')