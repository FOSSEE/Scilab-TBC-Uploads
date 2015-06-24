clear;
clc;

//page no. 327

Q = 5;//cfs
d = 12;//in
l = 5000;//ft
h = 70;//ft
L = 2000;//ft
K = (h/Q^1.85);
a = (L/l)*K;
b = ((l-L)/l)*K;
Q_ = (h/((b+a*(0.5^(1.85)))))^(1/1.85);
Q_A = Q_/2;
Q_B = Q_/2;
del = Q_-Q;//gain capcaity
percent = (del/Q)*100;//gain percentage
printf('The gain of capacity by looping the pipe is %.1f cfs or %d percentage',del,percent);
