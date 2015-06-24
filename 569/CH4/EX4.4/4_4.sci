// Calculate the temperature after 10s
clc;
th0=25;
thi=150;
t=10;
tc=6;
th=th0+(thi-th0)*[exp(-t/tc)];
disp(th,'the temperature after 10s (degree C)')