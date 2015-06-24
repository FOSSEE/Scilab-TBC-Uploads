clc
T1=1273; //K
T2=298; //K
T3=268; //K
T4=298; //K

//Let Q2/Q1=r1, r2=Q3/Q4;
r1=298/1273; //Q2/Q1
r2=268/298; //Q3/Q4

//Let Q4/Q1=r
r=(1-r1)/(1-r2);
disp("The ratio in which the heat pump and heat engine share the heating load =")
disp(r)
