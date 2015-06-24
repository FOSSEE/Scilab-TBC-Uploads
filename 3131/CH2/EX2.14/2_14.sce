clear all; clc;
disp("Ex 2_14")
disp(" Vector r = (1.707i + 0.707j -2k) m")
r=sqrt(1.707^2+0.707^2+(-2)^2)
printf('\nThe magnitude of r is: r = %.3f m',r)
disp(" ")
disp("u = (1.707/2.723)i + (0.707/2.723)j -(2/2.723)k")
disp("i.e. u = 0.6269i + 0.2597j - 0.7345k")
disp("F = (313i + 130j - 367k) N")//Obtaned by multiplying vector u by given force F=500N
f=sqrt(313^2+130^2+(-367)^2)
printf('\nMagnitude of F is: F = %.0f N',f)
