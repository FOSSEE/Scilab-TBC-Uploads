//example2.1
clc
disp("P=4   Z=440   psi=0.07 Wb   and   N=900 r.p.m.")
disp("E=(psi*P*N*Z)/(6*A)")
disp("i)For lap wound,      A=P=4")
e=(0.07*900*440)/60
disp(e,"Therefore,    E(in V)=(psi*N*Z)/60=")
disp("ii)For wave wound,     A=2")
e=(0.07*900*4*440)/120
disp(e,"Therefore,    E(in V)=(psi*P*N*Z)/120=")
