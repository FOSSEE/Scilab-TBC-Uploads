// problem 7.11
b=1.5
d=0.8
Q=0.75
i=1/2500
A=b*d
P=b+(2*d)
m=A/P
C=Q/(((m*i)^0.5)*A)
z=(157.6/C)-1.81
K=z*(m^0.5)
disp(K,C,"Chezys constant and coefficient of roughness")

