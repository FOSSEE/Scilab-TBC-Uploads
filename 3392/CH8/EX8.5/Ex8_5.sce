clc
// initialization of variables
clear
a=500 //mm
b=a
t1=5 //mm
t2=10 //mm
t3=20 //mm
// calculations
Ix=2343.75e+06//mm^4
q_B=b*t2*a/2
q_C=q_B+a/2*t1*a/4
q_S=a/2*t3*a/4
q_G=2*b*t2*a/2
q_H=q_G+a/2*t3*a/4
// th_L = th_R = 0  
// Writing the above in following form
//Ab=c ; b={q_A q_F}
A11=a/t1+b/t2+a/t3+b/t2
A12=a/t3
c1=(q_B+2/3*(q_C-q_B))*a/t1 + 1/2*q_B*b/t2 - 2/3*q_S*a/t3 + 1/2*q_B*b/t2
A21=A12
A22=a/t3+2*b/t2+a/t3+2*b/t2
c2=(q_G+2/3*(q_H-q_G))*a/t3+1/2*q_G*2*b/t2-2/3*q_S*a/t3+1/2*q_G*2*b/t2
A=[A11 A12
   A21 A22]
c=[c1
   c2]
b=inv(A)*c
q_A=b(1)/1000 //kN/mm
q_F=b(2)/1000 //kN/mm
q_B=q_B/1000
q_C=q_C/1000
q_S=q_S/1000
q_G=q_G/1000
q_H=q_H/1000
b=a // rewriting to it's initival value
 // To find out e, balance the moments     
 e=-((q_B-q_A+2/3*(q_C-q_A-(q_B-q_A)))*a*b + 1/2*(q_B-q_A)*219.1*a - 1/2*q_A*280.9*a + 1/2*q_F*471.9*a -1/2*(q_G-q_F)*528.1*a-(q_G-q_F+2/3*(q_H-q_F-(q_G-q_F)))*a*2*b)
e=e/Ix
 printf('e = %.1f mm',e*10^3)
 // Wrong answer in the text
