// Exa 3.33
clc;
clear;
close;
// Given data
V_T= 0.025;// in V
// Part(a)
disp("Part (a)")
V_BE= 690;// in mV
V_BE=V_BE*10^-3;// in V
I_C= 1;// in mA
I_B= 50;// in µA
I_C=I_C*10^-3;// in A
I_B=I_B*10^-6;// in A
bita= I_C/I_B;
alpha= bita/(1+bita);
I_E= I_C/alpha;// in A
// I_C= I_S*%e^(V_BE/V_T)
I_S= I_C/(%e^(V_BE/V_T));
disp(bita,"The value of bita is : ")
disp(alpha,"The value of alpha is : ")
disp(I_E*10^3,"The value of I_E in mA is : ")
disp(I_S,"The value of I_S in amp is : ")

// Part(b)
disp("Part (b)")
V_BE= 690;// in mV
V_BE=V_BE*10^-3;// in V
I_C= 1;// in mA
I_C=I_C*10^-3;// in A
I_E= 1.070;// in mA
I_E=I_E*10^-3;// in A
bita= I_C/I_B;
alpha= I_C/I_E;
bita= alpha/(1-alpha);
I_B= I_C/bita;// in A
// I_C= I_S*%e^(V_BE/V_T)
I_S= I_C/(%e^(V_BE/V_T));
disp(bita,"The value of bita is : ")
disp(alpha,"The value of alpha is : ")
disp(I_B*10^6,"The value of I_B in µA is : ")
disp(I_S,"The value of I_S in amp is : ")

// Part(c)
disp("Part (C)")
V_BE= 580;// in mV
V_BE=V_BE*10^-3;// in V
I_E= 0.137;// in mA
I_B= 7;// in µA
I_E=I_E*10^-3;// in A
I_B=I_B*10^-6;// in A
//  I_C= alpha*I_E  = bita*I_B
bita= I_E/I_B-1;
alpha= bita/(1+bita);
I_C= bita*I_B;// in A
// I_C= I_S*%e^(V_BE/V_T)
I_S= I_C/(%e^(V_BE/V_T));
disp(bita,"The value of bita is : ")
disp(alpha,"The value of alpha is : ")
disp(I_C*10^3,"The value of I_C in mA is : ")
disp(I_S,"The value of I_S in amp is : ")

// Part(d)
disp("Part (d)")
V_BE= 780;// in mV
V_BE=V_BE*10^-3;// in V
I_C= 10.10;// in mA
I_B= 120;// in µA
I_C=I_C*10^-3;// in A
I_B=I_B*10^-6;// in A
bita= I_C/I_B;
alpha= bita/(1+bita);
I_E= I_C/alpha;// in A
// I_C= I_S*%e^(V_BE/V_T)
I_S= I_C/(%e^(V_BE/V_T));
disp(bita,"The value of bita is : ")
disp(alpha,"The value of alpha is : ")
disp(I_E*10^3,"The value of I_E in mA is : ")
disp(I_S,"The value of I_S in amp is : ")

// Part(e)
disp("Part (e)")
V_BE= 820;// in mV
V_BE=V_BE*10^-3;// in V
I_E= 75;// in mA
I_B= 1050;// in µA
I_E=I_E*10^-3;// in A
I_B=I_B*10^-6;// in A
//  I_C= alpha*I_E  = bita*I_B
bita= I_E/I_B-1;
alpha= bita/(1+bita);
I_C= bita*I_B;// in A
// I_C= I_S*%e^(V_BE/V_T)
I_S= I_C/(%e^(V_BE/V_T));
disp(bita,"The value of bita is : ")
disp(alpha,"The value of alpha is : ")
disp(I_C*10^3,"The value of I_C in mA is : ")
disp(I_S,"The value of I_S in amp is : ")

