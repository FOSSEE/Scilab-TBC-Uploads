// calculating Total possible error and percentage error
clc;
R=5;
V=0.005*R;
disp(V,'0.5 percent of the reading')
TPE=V+0.01;
disp(TPE,'Total possible error (V)=')
R1=0.10;
V1=0.005*R1;
TPE1=V1+0.01;
disp(TPE1,'Total possible error (V)=')
PE=(TPE1/0.1)*100;
disp(PE,'Percentage error=')