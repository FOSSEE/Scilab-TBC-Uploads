clear all; clc;
disp("Ex 2_6")
disp("Solution I : Scalar Notation")
f1=600//Magnitude of force F1 in N
f2=400//Magnitude of force F2 in N
p1=30//given angle theta for force F1 from horizontal in degrees
p=p1*%pi/180//angle in radian
q1=45//given angle theta for force F2 from vertical in degrees
q=q1*%pi/180//angle in radian
FR_x=f1*cos(p)-f2*sin(q)
FR_y=f1*sin(p)+f2*cos(q)
F_R=sqrt(FR_x^2+FR_y^2)
theta1=atan(FR_y/FR_x)
theta=theta1*180/%pi
printf('\n\nFR_x = %.1f N rightwards',FR_x)
printf('\n\nFR_y = %.1f N upwards',FR_y)
printf('\n\nFr= %.0f N',F_R)
printf('\n\ntheta=%.1f Degrees',theta)
disp(" ")
disp("Solution II : Cartesian Vector Notation")
F1_i=f1*cos(p)
F1_j=f1*sin(p)
printf('\n\nF1 = %.1f i + %.1f j',F1_i,F1_j)
F2_i=(-1)*f2*sin(q)
F2_j=f2*cos(q)
printf('\n\nF2 = %.1f i + %.1f j',F2_i,F2_j)
F_Ri=F1_i+F2_i
F_Rj=F1_j+F2_j
printf('\n\nFR =(%.1fi+ %.1fj)N',F_Ri,F_Rj)
