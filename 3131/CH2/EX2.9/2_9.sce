clear all; clc;
disp("Ex 2_9")
f1_i=0
f1_j=60
f1_k=80
f2_i=50
f2_j=100*(-1)
f2_k=100
FR_i=f1_i+f2_i
FR_j=f1_j+f2_j
FR_k=f1_k+f2_k
printf('\n\nIn vector Form, FR = (%.0fi%.0fj+%.0fk) N',FR_i,FR_j,FR_k)
FR=sqrt(FR_i^2+FR_j^2+FR_k^2)
printf('\n\nThe magnitude of FR = %.0f N',FR)
u_i=FR_i/FR
u_j=FR_j/FR
u_k=FR_k/FR
printf('\n\nU_FR = %.4fi%.4fj+%.4fk',u_i,u_j,u_k)
disp(" ")
disp("cos(alpha) = 0.2617")
disp("cos(beta) = -0.2094")
disp("cos(gamma) = 0.9422")
a1=acos(u_i)
a=a1*180/%pi
b1=acos(u_j)
b=b1*180/%pi
c1=acos(u_k)
c=c1*180/%pi
printf('\n\n alpha = %.1f degrees',a)
printf('\n\n beta = %.0f degrees',b)
printf('\n\n gamma = %.1f degrees',c)
