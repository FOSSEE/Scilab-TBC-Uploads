//Section-9,Example-2,Page no.-E.52
//To calculate the transport number of hydrogen ions.
clc;
M_Ag=0.1209
Q=M_Ag/108
A=1.24
dx=7.5
C=0.1
t_H=(A*dx*C)/(Q*1000)
disp(t_H,'transport number of hydrogen ions')
