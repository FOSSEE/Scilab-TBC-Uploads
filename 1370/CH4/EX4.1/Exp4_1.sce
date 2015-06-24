//Example 4.1
clc
n=120/8
format(3)
disp(n,"n = slots/pole =")
m=15/3
disp(m,"m = slots/pole/phase = n/3 =")
beta=180/15
disp(beta,"beta(in degree) = 180/n =")
kd=(sind(30)/(5*sind(6)))
format(6)
disp(kd,"Therefore,  K_d = sin(m*beta/2) / m*sin(beta/2) =")
