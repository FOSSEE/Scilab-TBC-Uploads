// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 5 Example 18")
T1_a=800;//temperature of reservoir a in K
T1_b=700;//temperature of reservoir b in K
T1_c=600;//temperature of reservoir c in K
T2=320;//temperature of sink in K
W=20;//work done in KW
Q2=10;//heat rejected to sink in KW
disp("let heat supplied by reservoir at 800 K,700 K,600 K be Q1_a , Q1_b , Q1_c")
disp("here Q1-Q2=W")
disp("so heat supplied by source(Q1)=W+Q2 in KW")
Q1=W+Q2
disp("also given that,Q1_a=0.7*Q1_b.......eq 1")
disp("Q1_c=Q1-(0.7*Q1_b+Q1_b)")
disp("Q1_c=Q1-1.7*Q1_b........eq 2")
disp("for reversible engine")
disp("Q1_a/T1_a+Q1_b/T1_b+Q1_c/T1_c-Q2/T2=0......eq 3")
disp("substitute eq 1 and eq 2 in eq 3 we get, ")
disp("heat supplied by reservoir of 700 K(Q1_b)in KJ/s")
disp("Q1_b=((Q2/T2)-(Q1/T1_c))/((0.7/T1_a)+(1/T1_b)-(1.7/T1_c))")
Q1_b=((Q2/T2)-(Q1/T1_c))/((0.7/T1_a)+(1/T1_b)-(1.7/T1_c))
disp("so heat supplied by reservoir of 800 K(Q1_a)in KJ/s")
disp("Q1_a=0.7*Q1_b")
Q1_a=0.7*Q1_b
disp("and heat supplied by reservoir of 600 K(Q1_c)in KJ/s")
disp("Q1_c=Q1-1.7*Q1_b")
Q1_c=Q1-1.7*Q1_b
disp("so heat supplied by reservoir at 800 K(Q1_a)")
Q1_a
disp("so heat supplied by reservoir at 700 K(Q1_b)")
Q1_b
disp("so heat supplied by reservoir at 600 K(Q1_c)")
Q1_c=-Q1_c
disp("NOTE=>answer given in book for heat supplied by reservoir at 800 K,700 K,600 K i.e Q1_a=61.94 KJ/s,Q1_b=88.48 KJ/s,Q1_c=120.42 KJ/s is wrong hence correct answer is calculated above.")





