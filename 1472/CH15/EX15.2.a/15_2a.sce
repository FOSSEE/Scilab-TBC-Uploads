clc
//initialization of varaibles
disp("From mollier chart and table 3,")
h1=1371 //B/lb
h2s=1149 //B/lb
h3=118 //B/lb
e=0.9
disp("Neglecting pump work,")
Q1=h1-h3
W=156 //B/lb
eta1=W/Q1
Q=h1-W-h3
UE=W+e*Q
fraction = UE/Q1
//results
printf("Fraction supplied = %.2f",fraction)
