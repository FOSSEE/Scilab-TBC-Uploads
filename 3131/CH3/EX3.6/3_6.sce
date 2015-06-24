clear all; clc;
disp("Ex 3_6")
disp("Equilibrium Equations")
disp("F1 = {400j} N")
disp("F2 = {-800k} N")
disp("r_B = (-2i -3j +6k)")
disp("F3 = {-200i-300j+600k} N")//Obtained by multiplying the vector r_B by 700N
disp("F = Fx_i + Fy_j + Fz_k")
disp("For Equilibrium:")
disp("F1 + F2 + F3 + F = 0")
disp("i.e. 400j - 800k - 200i - 300j + 600k + Fx_i + Fy_j + Fz_k")
//Equating the respective i,j,k components to zero we find out the values of Fx, Fy, Fz
disp("Fx = 200 N")
disp("Fy = -100 N")
disp("Fz = 200 N")
disp("Thus: F = 200i - 100j + 200k")
a=sqrt(200^2+(-100)^2+200^2)
printf('\nu_F = (200/%.0f)i - (100/%.0f)j + (200/%.0f)k',a,a,a) 
u_i=200/a
u_j=((-1)*100)/a
u_k=200/a
l1=acos(u_i)
l=l1*180/%pi
m1=acos(u_j)
m=m1*180/%pi
n1=acos(u_k)
n=n1*180/%pi
printf('\n\n alpha = %.1f degrees',l)
printf('\n\n beta = %.0f degrees',m)
printf('\n\n gamma = %.1f degrees',n)
