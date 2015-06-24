

// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 1 Example # 1.5 ")

//Thickness of inside steel in m and thermal conductivity in W/m-k
t1 = 0.005;
k1 = 40;
//Thickness of outside brick in m and thermal conductivity in W/m-k
t2 = 0.1;
k2 = 2.5;

//Inside temperature in C
T1 = 900;
//Outside temperature in C
To = 460;

//Assuming the condition of steady state and using Eq. 1.24
disp("The rate of heat loss per unit area  in W/m2 is")
//The rate of heat loss per unit area  in W/m2 
qk = (T1-To)/(t1/k1+t2/k2)

disp("Temperature at the interface in K is given as")
//Temperature at the interface in K
T2 = T1-(qk*t1)/k1
