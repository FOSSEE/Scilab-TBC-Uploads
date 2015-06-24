// Calculate the output of successive approximation A/D
clc;
disp('Set d3=1')
Output=5/2^1;
disp('since 3.217>2.5  so d3=1')
disp('Set d2=1')
Output=(5/2^1)+(5/2^2);
disp('since 3.217< 3.75  so d2=0')
disp('Set d1=1')
Output=(5/2^1)+(5/2^3);
disp('since 3.217>3.125  so d1=1')
disp('Set d0=1')
Output=(5/2^1)+(5/2^3)+(5/2^4);
disp('since 3.217<3.4375  so d0=0')
disp('Output of successive approximation A/D = 1010')