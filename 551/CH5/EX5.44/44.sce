clc
T1=500; //K
T2=400; //K
T3=300; //K
Q1=1500; //kJ/min
W=200; //kJ/min

//Q1/T1 + Q2/T2 + Q3/T3=0
//Q1+Q2+Q3=W
//For solving the above two equations we use following method
//Q2-Q3=-1300
//Q2/400 - Q3/300 =-1500/500=-3

A=[1,-1;(1/400),(-1/300)];
B=[(-1300);(-3)];
X=inv(A)*B;
Q2=X(1,1);
disp("Q2 =")
disp(Q2)
disp("kJ/min")

Q3=X(2,1);
disp("Q3 =")
disp(Q3)
disp("kJ/min")

disp("(ii) Entropy change ")
dS1=(-Q1)/T1;
disp("Entropy change of source 1 =")
disp(dS1)
disp("kJ/K")

dS2=(-Q2)/T2;
disp("Entropy change of sink 2 =")
disp(dS2)
disp("kJ/K")

dS3=Q3/T3;
disp("Entropy change of source 3 =")
disp(dS3)
disp("kJ/K")


disp("(iii) Net change of the entropy")
dSnet = dS1 + dS2 + dS3;
disp("dSnet=")
disp(dSnet)