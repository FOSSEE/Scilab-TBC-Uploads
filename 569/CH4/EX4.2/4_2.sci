// calculate time to read half of the temperature difference
clc;
tc=10/5;
th=1;
th0=2;
t=-tc*log(1-(th/th0));
disp(t,'Time to read half of the temperature difference (s)')