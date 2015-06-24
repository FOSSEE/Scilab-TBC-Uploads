clc
T1=973; //K
T2=323; //K
T3=248; //K

Q1=2500; //kJ
W=400; //kJ

disp("(i)Heat rejection to the 50°C reservoir")
n_max=1-T2/T1;
W1=n_max*Q1;
COP_max=T3/(T2-T3);
W2=W1-W;
Q4=COP_max*W2;
COP1=Q4/W2;
Q3=Q4+W2;
Q2=Q1-W1;
disp("Heat rejection to the 50°C reservoir=")
disp(Q2+Q3)
disp("kJ")


disp("(ii)Heat rejected to 50°C reservoir ")
n=0.45*n_max;
W1=n*Q1;
W2=W1-W;
COP2=0.45*COP1;
Q4=W2*COP2;
Q3=Q4+W2;
Q2=Q1-W1;

disp("Heat rejected to 50°C reservoir=")
disp(Q2+Q3)
disp("kJ")